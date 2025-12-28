package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBanners;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BannerService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.UUID;

@WebServlet(name = "UpdateBannerServlet", value = "/admin/banner/update")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 10 * 1024 * 1024,
        maxRequestSize = 20 * 1024 * 1024
)
public class UpdateBannerServlet extends HttpServlet {

    private final BannerService bannerService = new BannerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=id");
            return;
        }

        Banner existing = bannerService.findById(id);
        if (existing == null) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=notfound");
            return;
        }

        Part imagePart = request.getPart("bannerImage");
        String imagePath = existing.getImage();

        if (imagePart != null && imagePart.getSize() > 0) {
            String savedRelativePath = saveUpload(request, imagePart);
            if (savedRelativePath == null) {
                response.sendRedirect(request.getContextPath() + "/admin/banners?error=upload");
                return;
            }
            imagePath = savedRelativePath;
        }

        boolean ok = bannerService.updateBannerImage(id, imagePath);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=db");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/banners?success=1");
    }

    private String saveUpload(HttpServletRequest request, Part part) throws IOException {
        String submitted = part.getSubmittedFileName();
        String original = submitted != null ? Paths.get(submitted).getFileName().toString() : "";
        String ext = "";
        int dot = original.lastIndexOf('.');
        if (dot >= 0 && dot < original.length() - 1) {
            ext = original.substring(dot);
        }

        String fileName = UUID.randomUUID() + ext;

        String uploadDirPath = request.getServletContext().getRealPath("/images/banners");
        if (uploadDirPath == null) return null;

        File uploadDir = new File(uploadDirPath);
        if (!uploadDir.exists() && !uploadDir.mkdirs()) {
            return null;
        }

        File dest = new File(uploadDir, fileName);
        part.write(dest.getAbsolutePath());

        return "images/banners/" + fileName;
    }
}


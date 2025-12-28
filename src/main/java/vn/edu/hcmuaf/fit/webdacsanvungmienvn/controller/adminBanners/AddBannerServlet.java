package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBanners;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BannerService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.UUID;

@WebServlet(name = "AddBannerServlet", value = "/admin/banner/add")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1MB
        maxFileSize = 10 * 1024 * 1024,  // 10MB
        maxRequestSize = 20 * 1024 * 1024 // 20MB
)
public class AddBannerServlet extends HttpServlet {

    private final BannerService bannerService = new BannerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Part imagePart = request.getPart("bannerImage");
        if (imagePart == null || imagePart.getSize() == 0) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=empty");
            return;
        }

        String savedRelativePath = saveUpload(request, imagePart);
        if (savedRelativePath == null) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=upload");
            return;
        }

        int newId = bannerService.createBanner(savedRelativePath);
        if (newId <= 0) {
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

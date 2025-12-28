package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

public class RatingInfo {
    private double averageRating;
    private int fullStars;
    private boolean halfStar;
    private int emptyStars;

    public RatingInfo(double avg) {
        avg = Math.max(0, Math.min(5, avg));
        avg = Math.round(avg * 2) / 2.0;
        this.averageRating = avg;
        this.fullStars = (int) avg;
        this.halfStar = (avg - fullStars) >= 0.5;
        this.emptyStars = 5 - fullStars - (halfStar ? 1 : 0);
    }

    public double getAverageRating() {
        return averageRating;
    }

    public int getFullStars() {
        return fullStars;
    }

    public int getEmptyStars() {
        return emptyStars;
    }

    public boolean isHalfStar() {
        return halfStar;
    }
}

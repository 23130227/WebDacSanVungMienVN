
    // Lấy các thẻ select
    const daySelect = document.getElementById("day");
    const monthSelect = document.getElementById("month");
    const yearSelect = document.getElementById("year");

    // Đổ ngày (1 - 31)
    for (let i = 1; i <= 31; i++) {
    let option = document.createElement("option");
    option.value = i;
    option.text = i;
    daySelect.appendChild(option);
}

    // Đổ tháng (1 - 12)
    for (let i = 1; i <= 12; i++) {
    let option = document.createElement("option");
    option.value = i;
    option.text = i;
    monthSelect.appendChild(option);
}

    // Đổ năm (từ 1950 đến năm hiện tại)
    const currentYear = new Date().getFullYear();
    for (let i = currentYear; i >= 1950; i--) {
    let option = document.createElement("option");
    option.value = i;
    option.text = i;
    yearSelect.appendChild(option);
}


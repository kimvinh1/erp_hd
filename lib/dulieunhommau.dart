class Nhommau {
  final String macase;
  final String tencase;
  final String mota;
  final String nguyennhan;
  final String giaiphap;
  final String hinhanh;
  final String thamkhao;

  Nhommau(this.macase, this.tencase, this.mota, this.nguyennhan, this.giaiphap,
      this.hinhanh, this.thamkhao);

  static List<Nhommau> getnhommau() {
    List<Nhommau> items = <Nhommau>[];
    items.add(Nhommau(
        "Case 1:",
        'Kháng thể yếu hoặc thiếu',
        "Bệnh nhân nhóm máu O nhưng phản ứng yếu hoặc thiếu trong huyết thanh bệnh nhân",
        '- Trẻ sơ sinh từ 3 đến 6 tháng tuổi\n- Bệnh nhân cao tuổi\n- Bệnh bạch cầu (lymphoctic mãn tính, u lympho ác tính)\n- Sử dụng chất ức chế miễn dịch gây hạ đường huyết\n- Bệnh nhân thiếu hụt Y-gluboline hoặc suy giảm miễn dịch\n- Ghép tủy xương (biến chứng hạ đường huyết khi điều trị và bắt đầu tạo ra quần thể RBC khác)\n- Bệnh nhân bị pha loãng huyết tương do truyền dịch hoặc huyết tương',
        'Tăng cường phản ứng yếu hoặc thiếu trong huyết thanh bệnh nhân:\n- Bước 1: Ủ với hồng cầu mẫu A1 và B ở nhiệt độ phòng hoặc 4 độ C trong khoảng 30 phút\n- Bước 2: Thực hiện song song cả hồng cầu mẫu O và chứng tự thân',
        "case1.png",
        ""));
    items.add(Nhommau(
        "Case 2:",
        'Bệnh nhân có Hồng cầu chuỗi tiền (Rouleaux)',
        'Ngưng kết với anti-B với phương pháp trực tiếp và hồng cầu A1 với phương pháp gián tiếp là do sự hình thành Rouleaux do tăng protein huyết thanh hoặc bất thường huyết tương',
        '- Nồng độ globulin tăng cao từ một số tình trạng bệnh: đa u tủy, bệnh macroglobulin máu của Waldenström, các chứng loạn sản tế bào plasma khác và một số trường hợp u lympho Hodgkin tiến triển vừa phải\n- Nồng độ fibrinogen tăng cao\n- Chất làm giản nở huyết tương, chẳng hạn như dextran và polyvinylpyrrolidone\n- Thạch Wharton trong mẫu máu cuống rốn',
        '- Kiểm tra chuỗi Rouleaux bằng kính hiển vi\n- Rửa hồng cầu BN nhiều lần (với máu cuốn rốn rửa từ 6-8 lần) bằng nước muối sinh lý hoặc thực hiện pha loãng huyết tương hoặc thay thế bằng nước muối sinh lý để giải phóng các tế bào chuỗi tiền  Thực hiện lại nhóm máu với hồng cầu đã xử lý ',
        "case2.png",
        ""));
    items.add(Nhommau(
        "Case 3: ",
        'Bệnh nhân có kháng thể lạnh',
        'Có thể bệnh nhân nhóm máu AB phản ứng bất thường xảy ra phương pháp gián tiếp với A1 Cells, B Cells',
        'Có kháng thể lạnh tự ngưng kết như Anti-I hoặc kháng thể lạnh tầng số cao ví dụ : anti-P1, anti M, anti-L',
        '- Hấp phụ huyết thanh bệnh nhân với Panel kháng thể lạnh. Thực hiện lại nhóm máu với Huyết thanh đã xử lý\n- Hoặc ủ mẫu và thực hiện phản ứng ở 37 độ C',
        "case3.png",
        ""));
    items.add(Nhommau(
        "Case 4:",
        'Có thể bệnh nhân nhóm máu AB phản ứng bất thường xảy ra phương pháp gián tiếp với A1 Cells, B Cells',
        'Bệnh nhân có kháng bất thường (alloantibody)',
        "Phản ứng với huyết thanh bệnh nhân là do kháng thể bất thường (alloantibody) không phải kháng thể ABO ngưng kết với kháng nguyên với A1 và B trên hồng cầu thuốc thử.",
        '- Hấp phụ huyết thanh bệnh nhân với Panel kháng thể bất thường. Thực hiện lại nhóm máu với Huyết thanh đã xử lý\n- Hoặc ủ mẫu và thực hiện phản ứng ở 37 độ C',
        "case4.png",
        ""));
    items.add(Nhommau(
        "Case 5:",
        'Nhóm máu phụ A (Subgroup A2)',
        "Bệnh nhân có nhóm máu A nhưng phản ứng bất thường xảy ra A1 Cells",
        'Có thể bệnh nhân có nhóm phụ A2B với anti- A1',
        '- Nhóm máu trực tiếp thử hồng cầu bệnh nhân với Anti-A1 lectin\n- Nhóm máu gián tiếp thử Huyết thanh bệnh nhân với Hồng cầu A1, A2, O',
        "case5.png",
        ""));
    items.add(Nhommau(
        "Case 6:",
        'Nhóm máu phụ AB (Subgroup A2B)',
        "Bệnh nhân có nhóm máu A nhưng phản ứng bất thường xảy ra A1 Cells",
        'Có thể bệnh nhân có nhóm phụ A2B với anti- A1',
        '- Nhóm máu trực tiếp thử hồng cầu bệnh nhân với Anti-A1 lectin\n- Nhóm máu gián tiếp thử Huyết thanh bệnh nhân với Hồng cầu A1, A2, O',
        "case6.png",
        ""));
    items.add(Nhommau(
        "Case 7:",
        'Chất hòa tan kháng nguyên ABH',
        "Bất đồng  giữa nhóm máu trực tiếp và gián tiếp",
        'Có thể bệnh nhân có chất tiết hòa tan kháng nguyên ABH (ABH Substances) che lắp kháng nguyên hồng cầu',
        'Thực hiện xét nghiệm nước bọt để tìm nguyên nhân (phụ lục??)',
        "case7.png",
        ""));
    items.add(Nhommau(
        "Case 8:",
        'Nhóm A với kháng nguyên B mắc phải (Group A with an acquired B antigen)',
        'Bệnh nhân có thể nhóm máu A nhưng bất thường xảy ra ở anti-B',
        'Kiểm tra lịch sử của bệnh nhân vấn đề về đường tiêu hóa hoặc nhiễm trùng huyết',
        'Acid hóa thuốc thử anti-B về  pH 6.0, sau đó thực hiện lại anti-B đã acid hóa với hồng cầu bệnh nhân',
        "case8.png",
        ""));
    items.add(Nhommau(
        "Case 9:",
        'Nhóm máu A với bệnh bạch cầu',
        "Phản ứng yếu với anti-A ",
        'Do bệnh bạch cầu, đã dẫn đến sự biểu hiện suy yếu của kháng nguyên tương ứng',
        'Kiểm tra lại thông tin lâm sàng bệnh nhân',
        "case9.png",
        ""));
    items.add(Nhommau(
        "Case 10:",
        'Nhóm máu B với bệnh bạch cầu',
        "Phản ứng yếu với anti-A do bệnh bạch cầu, đã dẫn đến sự biểu hiện suy yếu của kháng nguyên tương ứng",
        'Do bệnh bạch cầu, đã dẫn đến sự biểu hiện suy yếu của kháng nguyên tương ứng',
        'Kiểm tra lại thông tin lâm sàng bệnh nhân',
        "case10.png",
        ""));
    items.add(Nhommau(
        "Case 11:",
        'Nhóm ABO trong Chimera',
        'Chimerism được định nghĩa là sự hiện diện của hai quần thể tế bào trong một cá thể. Chimerism là gây ra ngưng kết yếu hoặc thiếu.',
        '- Chimerism hiếm khi được tìm thấy và xảy ra ở các cặp song sinh, trong đó hai quần thể nhóm máu sẽ tồn tại trong suốt cuộc đời của cá thể\n- Chimerism phổ biến xảy ra ở bệnh nhân : Truyền máu (ví dụ: tế bào nhóm O được truyền cho người A hoặc B). Ghép tuỷ hoặc tế bào gốc máu ngoại vi. Chảy máu thai nhi…',
        'Kiểm tra lại thông tin lâm sàng bệnh nhân',
        "5772.png",
        ""));


    return items;
  }
}

class Product {
  final String name;
  final String description;
  final String giaiphap;
  final String image;
  final String thamkhao;
  Product(
      this.name, this.description, this.giaiphap, this.image, this.thamkhao);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "P",
        "Lỗi liên quan đến hút mẫu.",
        "- B1: Kiểm tra thể tích ống mẫu.\n- B2: Nếu đủ thể tích mẫu, thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} Maintenance \u{2192} Clean Aspiration Probe \u{2192} Start .Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Chạy lại mẫu",
        "1_Co_P.png",
        ""));
    items.add(Product(
      "RBC-PLT OVERLAP",
      "Quần thể hồng cầu và tiểu cầu có bộ phận bị chồng lên nhau. Do tiểu cầu lớn gây nhiễu, thông báo này có thể đi kèm với thông báo nghi ngờ Giant Platelet (Tiểu cầu khổng lồ).",
      'Chạy lại mẫu',
      "2. RBC-PLT Overlap_2.png",
      "",
    ));
    items.add(Product(
      "BUBBLES",
      'Phát hiện có bọt khí trong mẫu',
      "- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} Maintenance \u{2192} Clean Aspiration Probe \u{2192} Start. Kết thúc bấm Finish\u{2192} Online máy.\n- B2: Chạy lại mẫu",
      "",
      "",
    ));
    items.add(Product(
      "CARRYOVER",
      "Phát hiện nhiễm chéo mẫu",
      '- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} Maintenance \u{2192} Clean Aspiration Probe \u{2192} Start.Kết thúc bấm Finish\u{2192} Online máy.\n- B2: Chạy lại mẫu',
      "",
      "",
    ));
    items.add(Product(
      "DATA DISC: D",
      'Flowcell bị khóa tạm thời trong quá trình thu nhận dữ liệu bách phân',
      "* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "",
      '',
    ));
    items.add(Product(
      "DATA DISC: N",
      'Flowcell bị khóa tạm thời trong quá trình thu nhận dữ liệu NRBC',
      "* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "",
      '',
    ));
    items.add(Product(
      "DATA DISC: R",
      'Flowcell bị khóa tạm thời trong quá trình phân tích dữ liệu Retic',
      "* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "",
      '',
    ));
    items.add(Product(
      "EXCESSIVE DEBRIS: D",
      'Số lượng mảnh vỡ quá cao so với số lượng bạch cầu trong quá trình phân tích bách phân',
      'Chạy lại mẫu',
      "8. Excessive Debris D.png",
      '',
    ));
    items.add(Product(
      "FLOWCEL CLOG: D",
      'Phát hiện Flowcell bị tắc trong quá trình phân tích bách phân',
      '* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "With Cleaner" \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "FLOWCEL CLOG: N",
      'Phát hiện Flowcell bị tắc trong quá trình phân tích bách phân',
      '* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "With Cleaner" \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "FLOWCEL CLOG: R",
      'Phát hiện Flowcell bị tắc trong quá trình phân tích Retic',
      '* Nếu bị trên 1 mẫu \u{2192} chạy lại mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "With Cleaner" \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy\n- B3: Sau khi xong thì chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "LOW EVENTS: D",
      'Không có đủ bạch cầu trong quá trình phân tích bách phân',
      "* Nếu bị trên 1 mẫu \u{2192} Kiểm tra thể tích mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "12. Low Event D.png",
      '',
    ));
    items.add(Product(
      "LOW EVENTS: N",
      'Không có đủ bạch cầu trong quá trình phân tích NRBC',
      "* Nếu bị trên 1 mẫu \u{2192} Kiểm tra thể tích mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "",
      '',
    ));
    items.add(Product(
      "LOW EVENTS: R",
      'Không có đủ hồng cầu trong quá trình phân tích Retic',
      "* Nếu bị trên 1 mẫu \u{2192} Kiểm tra thể tích mẫu\n* Nếu bị nhiều mẫu:\n- B1: Thực hiện thao tác sau: Menu \u{2192} Diagnostic \u{2192} Dx Tool \u{2192} VCSn \u{2192} Flush Flow Cell\n- B2: Bấm Start \u{2192} Chọn mục "
          "With Cleaner"
          " \u{2192} Cài thời gian là 10 phút. Kết thúc bấm Finish\u{2192} Online máy.\n- B3: Sau khi xong thì chạy lại mẫu",
      "",
      '',
    ));
    items.add(Product(
      "MO - NE OVERLAP",
      'Phát hiện có bạch cầu hạt Neutrophil trong vùng bạch cầu Mono trong quá trình phân tích bạch cầu',
      'Chạy lại mẫu',
      "15. MO-NE Overlap.png",
      '',
    ));
    items.add(Product(
      "NE - EO OVERLAP",
      'Phát hiện bạch cầu hạt Neutrophil và Eosinophil dịch chuyển hoặc chồng lẫn vào nhau trong quá trình phân tích bạch cầu',
      'Chạy lại mẫu',
      "16. NE-EO Overlap.png",
      '',
    ));
    items.add(Product(
      "PLT INTER: DEBRIS",
      'Nhiễu ở khu vực các tiểu cầu nhỏ (do các mảnh vỡ hoặc nhiễu điện do gián đoạn dòng quét Sweep Flow)',
      'Chạy lại mẫu',
      "17. PLT inter debris.png",
      '',
    ));
    items.add(Product(
      "DIMORPHIC RBC",
      'Hai quần thể hồng cầu',
      '- Với các mẫu lần đầu tiên xuất hiện \u{2192} Soi lam kiểm tra kết quả\n- Nếu bệnh nhân vừa truyền máu \u{2192} Trả kết quả và thêm ghi chú nghi ngờ có 2 quần thể hồng cầu',
      "18. Dimorphic Red_3.png",
      '',
    ));
    items.add(Product(
      "RBC FRAG/MICRO",
      'Mẫu có thể chứa các mảnh vỡ hồng cầu hoặc các tế bào hồng cầu rất nhỏ',
      'Soi lam kiểm tra lại kết quả',
      "19. RBC frag.png",
      '',
    ));
    items.add(Product(
      "MONO BLAST",
      'Dữ liệu ghi nhận kết quả có sự hiện diện của tế bào Mono chưa trưởng thành.',
      '- Đối với mẫu xuất hiện lần đầu: Kéo lam kiểm tra lại kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu không có sự gia tăng bạch cầu trong khoảng 3-7 ngày: Thực hiện theo SOP của phòng xét nghiệm.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu có sự gia tăng bạch cầu: Phải soi lam kiểm tra lại kết quả. ',
      "20. MO BLAST (Normal 5PD1).png",
      '(Theo hướng dẫn của ISLH)',
    ));
    items.add(Product(
      "NE BLAST",
      'Dữ liệu ghi nhận kết quả có sự hiện diện của tế bào Neutro chưa trưởng thành.',
      '- Đối với mẫu xuất hiện lần đầu: Kéo lam kiểm tra lại kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu không có sự gia tăng bạch cầu trong khoảng 3-7 ngày: Thực hiện theo SOP của phòng xét nghiệm.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu có sự gia tăng bạch cầu: Phải soi lam kiểm tra lại kết quả.',
      "21. NE BLAST (Normal 5PD1).png",
      '(Theo hướng dẫn của ISLH)',
    ));
    items.add(Product(
      "LYMPHO BLAST",
      'Dữ liệu ghi nhận kết quả có sự hiện diện của tế bào Lympho chưa trưởng thành.',
      "- Đối với mẫu xuất hiện lần đầu: Kéo lam kiểm tra lại kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu không có sự gia tăng bạch cầu trong khoảng 3-7 ngày: Thực hiện theo SOP của phòng xét nghiệm.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu có sự gia tăng bạch cầu: Phải soi lam kiểm tra lại kết quả.",
      "22. LY BLAST (Normal 5PD1).png",
      '(Theo hướng dẫn của ISLH)',
    ));
    items.add(Product(
      "VARIANT LY",
      'Bạch cầu Lympho biến thể',
      '- Đối với mẫu xuất hiện lần đầu: Soi lam kiểm tra lại kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu thông số bạch cầu thấp hơn kết quả cũ: Có thể trả kết quả\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu thông số bạch cầu cao hơn kết quả cũ: Phải soi lam kiểm tra lại kết quả.',
      "24. Variant LY.png",
      '(Theo hướng dẫn của ISLH)',
    ));
    items.add(Product(
      "R",
      'Yêu cầu kiểm tra lại kết quả do máy nghi ngờ về kết quả trả ra',
      'Kiểm tra lại kết quả bằng cách:\n- Kiểm tra các cờ báo và các thông báo hệ thống đi kèm trên màn hình kết quả bệnh nhân.\n- Kiểm tra History Log (Biểu tượng !)\n- Kiểm tra lại mẫu bệnh nhân',
      "",
      '',
    ));
    items.add(Product(
      "R",
      'Yêu cầu kiểm tra lại kết quả do máy nghi ngờ về kết quả trả ra',
      'Kiểm tra lại kết quả bằng cách:\n- Kiểm tra các cờ báo và các thông báo hệ thống đi kèm trên màn hình kết quả bệnh nhân.\n- Kiểm tra History Log (Biểu tượng !)\n- Kiểm tra lại mẫu bệnh nhân',
      "",
      '',
    ));
    items.add(Product(
      "RBC-PLT OVERLAP",
      'Nhiễu với tiểu cầu lớn, có thể kết hợp với thông báo nghi ngờ Gaint Platelet',
      'Kiểm tra lại kết quả',
      "",
      '',
    ));
    items.add(Product(
      "ABN HEMOGLOBIN",
      'Hemoglobin bất thường',
      'Kiểm tra lại kết quả',
      "27. Abn HGB (Normal Retic).png",
      '',
    ));
    items.add(Product(
      "CELLULAR INTER",
      'Nhiễu tế bào, thường đi kèm với cờ báo R ',
      'Kiểm tra lại kết quả',
      "28. Cellular Inter.png",
      '',
    ));
    items.add(Product(
      "GIANT PLATELETS",
      'Kết quả ghi nhận có sự hiện diện của tiểu cầu khổng lồ.',
      'Soi lam kiểm tra lại kết quả',
      "29. Giant Platelet.png",
      '',
    ));
    items.add(Product(
      "IMM GRANS",
      'Có bạch cầu non',
      '- Đối với mẫu xuất hiện lần đầu: Soi lam kiểm tra lại kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu thông số bạch cầu thấp hơn kết quả cũ: Có thể trả kết quả.\n- Đối với mẫu trước đó kết quả đã được xác nhận; Nếu thông số bạch cầu cao hơn kết quả cũ: Phải soi lam kiểm tra lại kết quả.',
      "30. Imm Grann 2.png",
      '(Theo hướng dẫn của ISLH)',
    ));
    items.add(Product(
      "LEFT SHIFT",
      'Đồ thị thể tích bạch cầu bị dịch chuyển sang trái',
      'Thực hiện theo SOP phòng xét nghiệm',
      "31. Left Shift.png",
      '',
    ));
    items.add(Product(
      "RED CELL AGGLUT",
      'Xuất hiện tình trạng kết cụm hồng cầu trong mẫu',
      '- B1: Làm ấm ống mẫu sau đó chạy lại mẫu\n- B2: Nếu còn tình trạng ngưng kết hồng cầu thì soi lam để kiểm tra kết quả',
      "32. Red Agglut.png",
      '',
    ));
    items.add(Product(
      "SICKLE CELLS",
      'Mẫu có chứa hồng cầu hình cầu',
      'Kiểm tra lại kết quả',
      "33. Sickle Cell (Normal Retic).png",
      '',
    ));
    items.add(Product(
      "PLT CARRYOVER",
      'Mức độ nhiễm chéo tiểu cầu ước tính, dựa trên tiều cầu từ mẫu trước đó và phần trăm nhiễm chéo tiểu cầu kỳ vọng, đủ cao để ảnh hưởng đáng kể đến kết quả PLT của mẫu xét nghiệm hiện tại',
      'Kiểm tra lại kết quả',
      "",
      '',
    ));
    items.add(Product(
      "SYSTEM EVENT: PLT",
      'Thông số phần cứng nằm ngoài giới hạn đối với một phần nào đó có thể ảnh hưởng đến phân tích tiểu cầu (điện áp, nhiệt độ, áp suất)',
      'Kiểm tra lại kết quả',
      "",
      '',
    ));
    items.add(Product(
      "NRBC INTER",
      'Không thể phân tách được nhiễu trong khu vực của NRBC trong khi phân tích NRBC',
      'Kiểm tra lại kết quả',
      "36. NRBC Inter (Normal NRBC).png",
      '',
    ));
    items.add(Product(
      "ABN DIFF PATTERN",
      'Mẫu có thành phần bạch cầu bất thường',
      'Kiểm tra lại mẫu bệnh nhân và chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "ABN NRBC PATTERN",
      'Mẫu có thành phần NRBC bất thường',
      'Kiểm tra lại mẫu bệnh nhân và chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "ABN RBC PATTERN",
      'Mẫu có thành phần RBC bất thường',
      'Kiểm tra lại mẫu bệnh nhân và chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "ABN RETIC PATTERN",
      'Mẫu có thành phần RETIC bất thường',
      'Kiểm tra lại mẫu bệnh nhân và chạy lại mẫu',
      "",
      '',
    ));
    items.add(Product(
      "ABN TNC PATTERN",
      'Mẫu có thành phần TNC bất thường',
      'Kiểm tra lại mẫu bệnh nhân và chạy lại mẫu',
      "",
      '',
    ));

    return items;
  }
}

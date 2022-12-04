class Dongmau {
  final String maloi;
  final String tenloi;
  final String mota;
  final String giaiphap;
  final String dexuat;
  final String hinhanh;
  final String thamkhao;
  Dongmau(this.maloi, this.tenloi, this.mota, this.giaiphap, this.dexuat,
      this.hinhanh, this.thamkhao);

  static List<Dongmau> getdongmau() {
    List<Dongmau> items = <Dongmau>[];
    items.add(Dongmau(
        "5004",
        'Aspiration Baseline Error',
        "Kim không đặt ở đúng vị trí trong lọ hóa chất khi hút hoặc chất lỏng không được cảm biến đúng trước khi hút",
        ' - Bước 1: Mẫu có cờ báo lỗi số 5004 (Vấn đề khi hút mẫu/hoá chất)\n - Bước 2: Đường cong (màu xanh da trời) không có hình dạng chữ “S”, mà là 1 đường thẳng giảm dần.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) và bậc 2 (xanh lơ) đều mấp mô, không có đỉnh rõ ràng.\n - Bước 4: Mức độ dao động (theo trục Y) là hơi nhỏ (40 đơn vị từ 765 đến 800)',
        'Kiểm tra và đảm bảo còn đủ thể tích mẫu, hóa chất, sau đó chạy rửa vệ sinh kim "Enhanced Clean For All Probe” và chạy lại mẫu',
        "5004.png",
        ""));
    items.add(Dongmau(
        "5057",
        '(Data) Curve min, and max, not in correct',
        "Đường cong giảm dần không đúng xu thế chung là phải tăng",
        ' - Bước 1: Mẫu có thông báo lỗi 5057 (đường cong giảm dần không đúng xu thế chung là phải tăng)\n - Bước 2: Đường phản ứng (màu xanh da trời) không có hình dạng chữ S, có xu hướng giảm.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) dao động nhiều\n - Bước 4: Mức độ chênh lệch (theo trục Y) là nhỏ, chưa đến 3 đơn vị (từ 22 đến 25) cho không hề có phản ứng xảy ra',
        'Chạy lại xét nghiệm trên chế độ mở rộng',
        "5057.png",
        ""));
    items.add(Dongmau(
        "5060",
        '(Data) Normalized curve delta too LOW.',
        "Mức độ chênh lệch (thay đổi) của đường cong quá thấp",
        ' - Bước 1: Mẫu có thông báo lỗi 5060 (độ chênh lệch của đường cong thấp), kết quả bị Failed\n - Bước 2: Đường cong (màu xanh da trời) có hình dạng chữ “S” với 4 giai đoạn: đường cơ sở, tăng tốc, giảm tốc và giai đoạn ổn định. Đường cơ sở kéo dài.\n - Bước 3: Không có các đường đạo hàm vì xét nghiệm này sử dụng thuật toán ngưỡng\n - Bước 4: Mức độ chênh lệch (theo trục Y) giữa đường baseline và đường biểu thị giai đoạn ổn định là thấp (chỉ thay đổi 10 đơn vị, từ 70 đến 80)',
        'Chạy xét nghiệm mở rộng Fib-C Low để mẫu được chạy dưới chế độ cô đặc rồi mới có thể đo được trong dải tuyến tính',
        "5060.png",
        ""));
    items.add(Dongmau(
        "5071",
        '(Coag) First derivative peak not found',
        "Không tìm thấy đỉnh đạo hàm bậc 1 ",
        ' - Bước 1: Mẫu không có thông báo lỗi nào cần lưu ý\n - Bước 2: Đường cong (màu xanh lam) không có hình dạng chữ “S”, ta thấy đường cơ sở kéo dài, và bắt đầu đi lên, có vẻ như là giai đoạn tăng tốc ở cuối\n - Bước 3: Đường đạo hàm bậc 1 không có đỉnh rõ ràng\n - Bước 4: Mức độ chênh lệch (theo trục Y) của đường cong là chấp nhận được (hiểu đơn giản là khoảng đo của trục Y, trong TH này là từ 100 đến 400 đơn vị) nghĩa là có thế có phản ứng đông máu xảy ra',
        'Do đó, ta sẽ tiến hành chạy xét nghiệm kéo dài (vì có v như là khi gần hết thời gian 120 giây tiêu chuẩn, phản ứng đông máu mới bắt đầu xảy ra)',
        "5071.png",
        ""));
    items.add(Dongmau(
        "5072",
        '(Coag) Second derivative peak not found',
        "Không tìm thấy đỉnh đạo hàm bậc 2 ",
        ' - Bước 1: Mẫu không có thông báo lỗi nào cần lưu ý\n - Bước 2: Đường cong (màu xanh lam) không có hình dạng chữ “S”, ta thấy đường cơ sở kéo dài, và bắt đầu đi lên, có vẻ như đang ở giai đoạn tăng tốc\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) và bậc 2 (xanh lơ) có đỉnh rõ ràng tuy nhiên có nhiều đoạn mấp mô => Không thể tìm thấy đỉnh đạo hàm bậc 2\n - Bước 4: Mức độ chênh lệch (theo trục Y) giữa đường baseline và đường biểu thị giai đoạn ổn đinh là chấp nhận được (hiểu đơn giản là khoảng đo của trục Y, trường hợp này là từ 94 đến 470 đơn vị), kết quả có hình thành phản ứng đông máu',
        'Kết quả có thể trả > dải đo của máy theo SOP của phòng xét nghiệm (ở đây có thể trả > 120 giây) hoặc lấy kết quả lấy tại đỉnh đầu tiên của đạo hàm bậc 2 của đường cong phản ứng tại thời điểm 148 giây',
        "5072.png",
        ""));
    items.add(Dongmau(
        "5076",
        '(Reaction) Initial slope exceeds error limit',
        "Hệ số slope ban đầu của đường cong đông máu lớn hơn giới hạn cho phép (Mẫu bệnh phẩm có nồng độ cao)",
        ' - Bước 1: Mẫu có thông báo lỗi 5076 (độ đốc – slope – ban đầu của đường cong quá lớn)\n - Bước 2: Đường cong phản ứng (màu xanh da trời) tăng nhanh rồi chậm lại, mềm mại không mấp mô.\n - Bước 3: Không có các đường đạo hàm\n - Bước 4: Mức độ chênh lệch (theo trục Y) là lớn (300 đơn vị, từ 990 đến 1300) cho thấy có phản ứng xảy ra',
        'Pha loãng thủ công hoặc chạy chế độ pha loãng tự động',
        "5076.png",
        ""));
    items.add(Dongmau(
        "5501",
        '(Range) Below Test Range [15.000 -150.000]',
        "Dưới ngưỡng  Test Range",
        ' - Bước 1: Mẫu không có thông báo lỗi nào cần lưu ý\n - Bước 2: Đường cong (màu xanh da trời) có hình dạng chữ “S” với 4 giai đoạn: đường cơ sở, tăng tốc, giảm tốc và giai đoạn ổn định. Giai đoạn baseline dài, giai đoạn tăng tốc chuẩn, giai đoạn giảm tốc chậm, giai đoạn ổn định chuẩn.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) không mấp mô, có đỉnh rõ ràng\n - Bước 4: Mức độ chênh lệch (theo trục Y) giữa đường baseline và đường biểu thị giai đoạn ổn đinh là cao (900 đơn vị) cho thấy có phản ứng mạnh',
        'Kết quả cho mẫu này được lấy tại đỉnh đạo hàm bậc 1 của đường cong phản ứng tại thời điểm 128.7 giây (đường kẻ dọc màu đỏ)',
        "5501.png",
        ""));
    items.add(Dongmau(
        "5502",
        '(Data) Baseline SD exceeds error limit',
        "Độ lệch chuẩn (SD) của đường cơ sở (baseline) lớn hơn giới hạn cho phép",
        ' - Bước 1: Mẫu có thông báo lỗi 5052 (đường cơ sở không ổn định) và 5772 (mẫu có hàm lượng lipid cao)\n - Bước 2: Đường cong (màu xanh da trời) có hình dạng chữ “S” với 4 giai đoạn: đường cơ sở, tăng tốc, giảm tốc và giai đoạn ổn định. Tuy nhiên đường cơ sở không đi ngang mà lại đi xuống. Đồng thời đường cong cũng mấp mô và dao động nhiều, cho thấy có yếu tố gây nhiễu ở đây\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) dao động nhiều nhưng vẫn có đỉnh rõ ràng\n - Bước 4: Mức độ chênh lệch (theo trục Y) giữa đường baseline và đường biểu thị giai đoạn ổn đinh là chấp nhận được (60 đơn vị), cho thấy có phản ứng xảy ra nhưng thang đo trục Y lại là từ 1500 mAbs (mẫu bình thường chỉ trong khoảng 100 mAbs)',
        'Chạy lặp lại mẫu này (tốt nhất là sau khi đã ly tâm tốc độ cao, 14000 rpm trong 10 phút, để loại bỏ lipid) vì đoạn baseline bất thường có thể do kim bị bán tắc (vì hút phải mẫu có nhiều lipid), nếu tiếp diễn nên chạy rửa vệ sinh kim',
        "5502.png",
        ""));
    items.add(Dongmau(
        "5700",
        'Volume Tracking -Insufficient Liquid (Sample)',
        "Thiếu mẫu bệnh phẩm",
        ' - Bước 1: Mẫu có cờ báo lỗi số 5700 (Thiếu mẫu bệnh phẩm) và lỗi số 5774 (kiểm tra HIL thất bại)\n - Bước 2: Đường cong (màu xanh da trời) không có hình dạng chữ “S”, mà là 1 đường mấp mô dao động.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) và bậc 2 (xanh lơ) đều mấp mô, không có đỉnh.\n - Bước 4: Mức độ dao động (theo trục Y) là rất nhỏ (0.04 đơn vị từ 66.625 đến 66.665) cho thấy không có phản ứng xảy ra, sự mấp mô của các đường biểu diễn chỉ là do độ chia quá nhỏ',
        'Kiểm tra lại thể tích mẫu và lấy lại mẫu nếu cần',
        "5700.png",
        ""));
    items.add(Dongmau(
        "5760",
        'Fluidic obstruction',
        "Tắc đường dịch",
        ' - Bước 1: Mẫu có cờ báo lỗi số 5760 (Tắc đường dịch)\n - Bước 2: Đường cong (màu xanh da trời) không có hình dạng chữ “S”, mà là 1 đường mấp mô dao động.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) và bậc 2 (xanh lơ) đều mấp mô, không có đỉnh rõ ràng.y\n - Bước 4: Mức độ dao động (theo trục Y) là nhỏ (4 đơn vị từ 110 đến 144) cho thấy gần như là không có phản ứng xảy ra',
        'Chạy rửa vệ sinh kim "Enhanced Clean For All Probe” và chạy lại mẫu',
        "5760.png",
        ""));
    items.add(Dongmau(
        "5772",
        'Lipemia high',
        "Mẫu Lipid quá cao và có thể ảnh hưởng đến kết quả.",
        ' - Bước 1: Mẫu có thông báo lỗi 5772 (mẫu có hàm lượng lipid cao)\n - Bước 2: Đường cong (màu xanh da trời) có hình dạng chữ “S” với 4 giai đoạn: đường cơ sở, tăng tốc, giảm tốc và giai đoạn ổn định. Đường cong cũng vẫn mấp mô và dao động nhiều như ví dụ trên, cho thấy có yếu tố gây nhiễu ở đây. Tuy nhiên đường cơ sở đã không còn bị đi xuống như ví dụ trên.\n - Bước 3: Đường đạo hàm bậc 1 (tím hồng) dao động nhiều nhưng vẫn có đỉnh rõ ràng\n - Bước 4: Mức độ chênh lệch (theo trục Y) giữa đường baseline và đường biểu thị giai đoạn ổn đinh là chấp nhận được (60 đơn vị), cho thấy có phản ứng xảy ra nhưng thang đo trục Y lại là từ 1500 mAbs (mẫu bình thường chỉ trong khoảng 100 mAbs',
        'Kết quả cho mẫu này được lấy tại đỉnh đạo hàm bậc 1 của đường cong phản ứng tại thời điểm 10.0 giây (đường kẻ dọc màu đỏ), tuy nhiên cần cân nhắc kết quả đồng thời tiền xử lý mẫu (ly tâm tốc độ cao) để giảm ảnh hưởng của hàm lượng lipid cao',
        "5772.png",
        ""));

    return items;
  }
}

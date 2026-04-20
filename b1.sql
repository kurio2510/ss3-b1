-- Phân tích nguyên nhân
-- Đoạn code nguy hiểm là:
UPDATE PRODUCTS
SET OriginalPrice = OriginalPrice * 0.9;
-- Thiếu sót chí mạng:
-- Không có WHERE
-- Hệ quả:
-- Lệnh UPDATE áp dụng cho toàn bộ bảng PRODUCTS 
-- Tất cả sản phẩm (cả điện tử lẫn thực phẩm) đều bị giảm giá 10% 
-- Nếu đây là bảng thật > doanh thu “bay màu” hàng loạt
-- Fix đúng:

UPDATE PRODUCTS
SET OriginalPrice = OriginalPrice * 0.9
WHERE Category = 'Electronics';


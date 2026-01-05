import 'package:flutter/material.dart';

// Import các màn hình chi tiết
import 'text_detail.dart';
import 'image_detail.dart';
import 'textfield_detail.dart';
import 'row_layout.dart';
import 'icon_detail.dart';
import 'button_detail.dart';
import 'switch_detail.dart';
import 'checkbox_detail.dart';
import 'column_layout.dart';
import 'stack_layout.dart';
import 'slider_detail.dart';
import 'radio_detail.dart';
import 'card_detail.dart';
import 'wrap_layout.dart';
import 'date_picker_detail.dart';
import 'time_picker_detail.dart';
import 'dropdown_detail.dart';
import 'fab_detail.dart';
import 'snackbar_detail.dart';
import 'alert_dialog_detail.dart';
import 'progress_indicator_detail.dart';
import 'chip_detail.dart';
import 'popup_menu_detail.dart';

class UIComponentsList extends StatelessWidget {
  const UIComponentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SafeArea giúp nội dung không bị dính vào Notch (tai thỏ) hoặc Bottom Bar
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          children: [
            _buildSectionTitle('DISPLAY'),
            _item(
              context,
              title: 'Text',
              subtitle: 'Hiển thị văn bản với nhiều định dạng',
              icon: Icons.text_fields,
              page: const TextDetail(),
            ),
            _item(
              context,
              title: 'Image',
              subtitle: 'Hiển thị hình ảnh từ Assets hoặc Network',
              icon: Icons.image,
              page: const ImageDetail(),
            ),
            _item(
              context,
              title: 'Icon',
              subtitle: 'Sử dụng thư viện Material Icons',
              icon: Icons.insert_emoticon,
              page: const IconDetail(),
            ),
            _item(
              context,
              title: 'Button',
              subtitle: 'Các loại nút bấm: Elevated, Outlined, Text',
              icon: Icons.smart_button,
              page: const ButtonDetail(),
            ),
            _item(
              context,
              title: 'Card',
              subtitle: 'Hiển thị thông tin theo nhóm với hiệu ứng đổ bóng',
              icon: Icons.credit_card,
              page: const CardDetail(),
            ),
            _item(
              context,
              title: 'Progress Indicator',
              subtitle: 'Hiển thị tiến trình tải hoặc xử lý',
              icon: Icons.hourglass_empty,
              page: const ProgressIndicatorDetail(),
            ),
            _item(
              context,
              title: 'Chip',
              subtitle: 'Các thẻ nhỏ đại diện cho thuộc tính hoặc hành động',
              icon: Icons.label_outline,
              page: const ChipDetail(),
            ),
            _item(
              context,
              title: 'Popup Menu',
              subtitle: 'Menu thả xuống với các tùy chọn',
              icon: Icons.more_vert,
              page: const PopupMenuDetail(),
            ),

            const SizedBox(height: 24),

            _buildSectionTitle('INPUT'),
            _item(
              context,
              title: 'TextField',
              subtitle: 'Ô nhập liệu văn bản và mật khẩu',
              icon: Icons.input,
              page: const TextFieldDetail(),
            ),
            _item(
              context,
              title: 'Switch',
              subtitle: 'Nút gạt Bật/Tắt (Toggle)',
              icon: Icons.toggle_on,
              page: const SwitchDetail(),
            ),
            _item(
              context,
              title: 'Checkbox',
              subtitle: 'Lựa chọn nhiều mục (Multiple choice)',
              icon: Icons.check_box,
              page: const CheckboxDetail(),
            ),
            _item(
              context,
              title: 'Slider',
              subtitle: 'Thanh trượt để chọn giá trị trong một khoảng',
              icon: Icons.linear_scale,
              page: const SliderDetail(),
            ),
            _item(
              context,
              title: 'Radio Button',
              subtitle: 'Lựa chọn một mục duy nhất trong nhóm',
              icon: Icons.radio_button_checked,
              page: const RadioDetail(),
            ),
            _item(
              context,
              title: 'Dropdown',
              subtitle: 'Menu thả xuống để chọn một giá trị',
              icon: Icons.arrow_drop_down_circle,
              page: const DropdownDetail(),
            ),
            _item(
              context,
              title: 'Date Picker',
              subtitle: 'Chọn ngày từ lịch',
              icon: Icons.date_range,
              page: const DatePickerDetail(),
            ),
            _item(
              context,
              title: 'Time Picker',
              subtitle: 'Chọn giờ từ đồng hồ',
              icon: Icons.access_time,
              page: const TimePickerDetail(),
            ),

            const SizedBox(height: 24),

            _buildSectionTitle('INTERACTION'),
            _item(
              context,
              title: 'Floating Action Button',
              subtitle: 'Nút hành động nổi thường dùng cho hành động chính',
              icon: Icons.add_circle,
              page: const FabDetail(),
            ),
            _item(
              context,
              title: 'Snackbar',
              subtitle: 'Thông báo tạm thời ở cuối màn hình',
              icon: Icons.info_outline,
              page: const SnackbarDetail(),
            ),
            _item(
              context,
              title: 'Alert Dialog',
              subtitle: 'Hộp thoại cảnh báo hoặc xác nhận',
              icon: Icons.warning_amber_rounded,
              page: const AlertDialogDetail(),
            ),

            const SizedBox(height: 24),

            _buildSectionTitle('LAYOUT'),
            _item(
              context,
              title: 'Row',
              subtitle: 'Sắp xếp các widget theo chiều ngang',
              icon: Icons.view_column, // Icon minh họa hàng ngang
              page: const RowLayout(),
            ),
            _item(
              context,
              title: 'Column',
              subtitle: 'Sắp xếp các widget theo chiều dọc',
              icon: Icons.view_stream, // Icon minh họa hàng dọc
              page: const ColumnLayout(),
            ),
            _item(
              context,
              title: 'Stack',
              subtitle: 'Xếp chồng các widget lên nhau',
              icon: Icons.layers,
              page: const StackLayout(),
            ),
            _item(
              context,
              title: 'Wrap',
              subtitle: 'Sắp xếp widget trên nhiều dòng khi không đủ chỗ',
              icon: Icons.wrap_text,
              page: const WrapLayout(),
            ),
            // _item(
            //   context,
            //   title: 'Expanded & Flexible',
            //   subtitle: 'Kiểm soát cách widget lấp đầy không gian có sẵn',
            //   icon: Icons.space_dashboard,
            //   page: const ExpandedFlexibleDetail(),
            // ),

            // Padding dưới cùng để danh sách không bị sát mép màn hình
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Hàm helper tạo tiêu đề phân đoạn
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  // Hàm helper tạo từng Item trong danh sách
  Widget _item(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget page,
  }) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.withOpacity(0.1),
          child: Icon(icon, color: Colors.blue, size: 20),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.grey,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}

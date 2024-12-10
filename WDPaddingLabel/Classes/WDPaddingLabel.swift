
open class WDPaddingLabel: UILabel {
    open var padding: UIEdgeInsets = .zero {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    /*
     文字还是绘制在padding之内
     */
    open override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, self.padding))
    }
    
    /*
     intrinsicContentSize 主要用于自动布局，帮助系统计算视图的大小。
     如果手动设置 frame，则不会调用 intrinsicContentSize
     */
    open override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.width += padding.left + padding.right
        size.height += padding.top + padding.bottom
        return size
    }
}

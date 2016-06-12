import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var block: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 設定「移動」要執行的動畫程式碼
    @IBAction func translateBtn(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.block.transform = CGAffineTransformMakeTranslation(100, 100)
            }, completion: nil)
    }

    // 設定「旋轉」要執行的動畫程式碼
    @IBAction func rotateBtn(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.block.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 4.0))
            }, completion: nil)
    }

    // 設定「變色」要執行的動畫程式碼
    @IBAction func colorBtn(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.block.backgroundColor = UIColor.blueColor()
            }, completion: nil)
    }
    
    // 設定「縮放」要執行的動畫程式碼
    @IBAction func scaleBtn(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.block.transform = CGAffineTransformMakeScale(2, 2)
            }, completion: nil)
    }
    
    // 設定「改變透明度」要執行的動畫程式碼
    @IBAction func alphaBtn(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.block.alpha = 0.1
            }, completion: nil)
    }
    
    // 設定「回復原始狀態」要執行的動畫程式碼
    @IBAction func resetBtn(sender: AnyObject) {
        self.block.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 0), CGAffineTransformMakeScale(1, 1))
        self.block.backgroundColor = UIColor.redColor()
        self.block.alpha = 1
    }
}


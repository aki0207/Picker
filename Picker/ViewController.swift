import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource {
    


    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let dataList = [
        "りんご","バナナ","ぶどう","もも",
        "みかん","パイナップル","マンゴー","レモン",
        "キウイ","メロン","スイカ","ゴリラ"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate設定
        pickerView.delegate = self
        pickerView.dataSource = self
        label.text = "フルーツカーニバル"
        
    }
    
    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、リストの数
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return dataList.count
    }
    
    // UIPickerViewの最初の表示
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return dataList[row]
    }
    
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        
        label.text = dataList[row]
        
    }
    
}

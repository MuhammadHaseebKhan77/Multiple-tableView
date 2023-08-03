
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var seg: UISegmentedControl!
    var mulData:[Multan]=[]
    var isbData:[Islamabad]=[]
    var lhrData:[Lahore]=[]
    var krhData:[Karachi]=[]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mulData=[
            Multan(city: "City:- Multan", img:UIImage(named: "2019-07-08")!, title: "ShahRukny Alam"),
                 Multan(city: "City:-Multan", img:UIImage (named: "Clock_Tower_Multan_City_2017")!, title: "Clock_Tower"),
                 Multan(city: "City:- Multan", img:UIImage (named: "Services-Club-Multan-1024x683")!, title: "Club"),
                 Multan(city: "City:- Multan", img:UIImage (named: "DSC_0171")!, title: "United Mall")
        ]
        
        
        isbData=[
            Islamabad(city: "City:- Islamabad", img:UIImage (named: "austin-smart-70350")!, title: "ShahRukny Alam"),
                 Islamabad(city: "City:-Islamabad", img:UIImage (named: "clem-onojeghuo-196232")!, title: "Clock_Tower"),
                 Islamabad(city: "City:- Islamabad", img:UIImage (named: "francesco-gallarotti-2497")!, title: "Club"),
                 Islamabad(city: "City:- Islamabad", img:UIImage (named: "DSC_0171")!, title: "United Mall")
        ]
        
        
        
        lhrData=[
            Lahore(city: "City:- Lahore", img:UIImage (named: "joanna-kosinska-129039")!, title: "ShahRukny Alam"),
                 Lahore(city: "City:-Lahore", img:UIImage (named: "karsten-wurth-96082")!, title: "Clock_Tower"),
                 Lahore(city: "City:- Lahore", img:UIImage (named: "levi-saunders-71726")!, title: "Club"),
                 Lahore(city: "City:- Lahore", img:UIImage (named: "math-83287")!, title: "United Mall")
        ]
        
        
        
        krhData=[
            Karachi(city: "City:- Karachi", img:UIImage (named: "math-83288")!, title: "ShahRukny Alam"),
                 Karachi(city: "City:-Karachi", img:UIImage (named: "michal-grosicki-235026")!, title: "Clock_Tower"),
                Karachi(city: "City:- Karachi", img:UIImage (named: "patrick-tomasso-216284")!, title: "Club"),
                 Karachi(city: "City:- karachi", img:UIImage (named: "rodion-kutsaev-82627")!, title: "United Mall")
        ]
        
        
    }
    
    @IBAction func buttonSeg(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value=0
        switch seg.selectedSegmentIndex{
        case 0:
            value = mulData.count
            break
        case 1:
            value = isbData.count
            break
        case 2:
            value = lhrData.count
            break
        case 3:
            value =  krhData.count
            break
        default: break
            
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell" , for: indexPath) as! TableViewCell
        switch seg.selectedSegmentIndex {
        case 0:
            cell.label1.text=mulData[indexPath.row].title
            cell.lable2.text=mulData[indexPath.row].city
            cell.img.image=mulData[indexPath.row].img
            break
        case 1:
            cell.label1.text=isbData[indexPath.row].title
            cell.lable2.text=isbData[indexPath.row].city
            cell.img.image=isbData[indexPath.row].img
            break
        case 2:
            cell.label1.text=lhrData[indexPath.row].title
            cell.lable2.text=lhrData[indexPath.row].city
            cell.img.image=lhrData[indexPath.row].img
            break
        case 3:
            cell.label1.text=krhData[indexPath.row].title
            cell.lable2.text=krhData[indexPath.row].city
            cell.img.image=krhData[indexPath.row].img
            break
        default:
            break
        }
        return cell
    }
}


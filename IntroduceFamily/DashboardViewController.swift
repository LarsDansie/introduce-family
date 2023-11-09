

import UIKit

class DashboardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var familyTableView: UITableView!
    

    var familyMembers = [FamilyMember]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        familyMembers = familyAPI.getFamily()
        familyTableView.backgroundColor = UIColor.tintColor

        familyTableView.dataSource = self
        familyTableView.delegate = self
        familyTableView.separatorStyle = .none
        familyTableView.showsVerticalScrollIndicator = false
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedFamilyMember = familyMembers[indexPath.row]
        performSegue(withIdentifier: "FamilyDetailSegue", sender: selectedFamilyMember)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FamilyDetailSegue", let familyDetailVC = segue.destination as? FamilyDetailViewController {
            if let selectedFamilyMember = sender as? FamilyMember {
                familyDetailVC.familyMember = selectedFamilyMember
            }
        }
    }

    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyMembers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "familyCell", for: indexPath) as! FamilyTableViewCell

        let familyMember = familyMembers[indexPath.row]
        cell.update(with: familyMember)

        return cell
    }
}

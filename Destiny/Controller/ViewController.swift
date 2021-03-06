
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
   var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)

        updateUI()
        
        
    }
    
    func updateUI(){
        var selectedStory = storyBrain.getStory()
        storyLabel.text = selectedStory.title
        choice1Button.setTitle(selectedStory.choice1, for: .normal)
        choice2Button.setTitle(selectedStory.choice2, for: .normal)
        choice1Button.titleLabel?.sizeToFit()
        choice2Button.titleLabel?.sizeToFit()
    }
    
}


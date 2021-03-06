/*
* JFCardSelectionViewController
*
* Created by Jeremy Fox on 3/1/16.
* Copyright (c) 2016 Jeremy Fox. All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/
import UIKit

extension JFCardSelectionViewController: JFFocusedCardViewDelegate {
    
    func focusedCardViewDidSelectActionItemOne(focusedCardView: JFFocusedCardView) {
        guard let actionOne = focusedCardView.card.actionOne else { return }
        if let indexPath = collectionView.indexPathsForSelectedItems()?.first {
            delegate?.cardSelectionViewController(self, didSelectCardAction: actionOne, forCardAtIndexPath: indexPath)
        } else {
            let indexPath = NSIndexPath(forItem: 0, inSection: 0)
            delegate?.cardSelectionViewController(self, didSelectCardAction: actionOne, forCardAtIndexPath: indexPath)
        }
    }
    
    func focusedCardViewDidSelectActionItemTwo(focusedCardView: JFFocusedCardView) {
        guard let actionTwo = focusedCardView.card.actionTwo else { return }
        if let indexPath = collectionView.indexPathsForSelectedItems()?.first {
            delegate?.cardSelectionViewController(self, didSelectCardAction: actionTwo, forCardAtIndexPath: indexPath)
        } else {
            let indexPath = NSIndexPath(forItem: 0, inSection: 0)
            delegate?.cardSelectionViewController(self, didSelectCardAction: actionTwo, forCardAtIndexPath: indexPath)
        }
    }
    
    func focusedCardViewDidSelectDetailAction(focusedCardView: JFFocusedCardView) {
        if let indexPath = collectionView.indexPathsForSelectedItems()?.first {
            delegate?.cardSelectionViewController(self, didSelectDetailActionForCardAtIndexPath: indexPath)
        } else {
            let indexPath = NSIndexPath(forItem: 0, inSection: 0)
            delegate?.cardSelectionViewController(self, didSelectDetailActionForCardAtIndexPath: indexPath)
        }
    }
    
}
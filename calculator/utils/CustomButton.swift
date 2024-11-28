import SwiftUI

struct CustomButton :View {
    var title1:String
    var action:(() -> Void)
    var background:Color
    var forgroundColor :Color
    var body: some View {
        Button(action: action){
            HStack{
                Text(title1)
            }
        }
        
        .frame(width: 60, height: 60)
        .background(background)
        .foregroundStyle(forgroundColor)
        .clipShape(Circle())
        .font(. system(size: 22))
    }
}

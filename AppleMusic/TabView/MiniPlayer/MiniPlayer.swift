//
//  MiniPlayer.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct MiniPlayer: View {
    @Binding var expand: Bool
    var animation: Namespace.ID
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    //Volum Slider...
    @State var volume: CGFloat = Constants.miniPlayerZero
    //TrackSlider...
    @State var trackSlider: CGFloat = Constants.miniPlayerZero
    //Gesture OffSet...
    @State var offSet: CGFloat = Constants.miniPlayerZero
    
    var body: some View {
        VStack {
            //Capsule...
            MiniPlayerIconToCollapse(expand: $expand, safeArea: safeArea)
            
            HStack(spacing: Constants.hStackSpacing) {
                if expand {Spacer(minLength: Constants.miniPlayerSpacerMinLenght)}
                Image("01")
                    .resizable()
                    .frame(width: expand ? height : Constants.imageFrameWidth, height: expand ? height : Constants.imgeFrameHeight)
                    .cornerRadius(Constants.imgeCornerRadius)
                if !expand {
                    VStack(alignment: .leading, spacing: Constants.vStackSpacing) {
                        Text("Годы как вода")
                            .matchedGeometryEffect(id: "Label", in: animation)
                        Text("Мурат Тхагалегов")
                    }
                }
                Spacer()
                if !expand {
                    Button(action: {
                        print("Play")
                    }, label: {
                        Image(systemName: "play.fill")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    Button(action: {
                        print("Forward")
                    }, label: {
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                }
            }
            .padding(.all)
            .background(Color.init("MiniPlayerBackground"))
            .opacity(Constants.miniPlayerOpacity)
            VStack(spacing: Constants.miniPlayerTextSpacing) {
                Spacer(minLength: Constants.miniPlayerSpacerMinLenght)
                HStack {
                    if expand {
                        VStack{
                            Text("Годы как вода")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animation)
                            Text("Мурат Тхагалегов")
                                .fontWeight(.bold)
                        }
                    }
                    Spacer(minLength: Constants.miniPlayerSpacerMinLenght)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                //Track Slider...
                MiniPlayerTrackSlider(trackSlider: $trackSlider)
                //Button...
                MiniPlayerButton()
                Spacer(minLength: Constants.miniPlayerSpacerMinLenght)
                MiniPlayerVolume(volume: $volume)
                MiniPlayerBottomButton()
            }
            .frame(height: expand ? nil : Constants.miniPlayerZero)
            .opacity(expand ? Constants.miniPlayerOpacityExpended : Constants.miniPlayerZero)
        }
        .frame(maxHeight: expand ? .infinity : Constants.miniPlayerMaxHeightExpended)
        .background(
            VStack(spacing: Constants.miniPlayerZero){
                BlurView()
                Divider()
            })
        .onTapGesture(perform: {
            withAnimation(  .spring()){expand = true}
        })
        .cornerRadius(expand ? Constants.miniPlayerCornerRadiusExpended : Constants.miniPlayerZero)
        .offset(y: expand ? Constants.miniPlayerZero : Constants.miniPlayerOffSets)
        .offset(y: offSet)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value) {
        if value.translation.height > Constants.miniPlayerZero && expand {
            offSet = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: Constants.miniPlayerWithAnimationResponse, dampingFraction: Constants.miniPlayerWithAnimationDampingFraction, blendDuration: Constants.miniPlayerWithAnimationBlendDuration)) {
            if value.translation.height > height {
                expand = false
            }
            offSet = Constants.miniPlayerZero
        }
    }
}

//struct MiniPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniPlayer()
//    }
//}

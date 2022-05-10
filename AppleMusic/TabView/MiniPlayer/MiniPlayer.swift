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
    @State var volum: CGFloat = Constants.miniPlayerZero
    //TrackSlider...
    @State var trackSlider: CGFloat = Constants.miniPlayerZero
    //Gesture OffSet...
    @State var offSet: CGFloat = Constants.miniPlayerZero
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? Constants.miniPlayerCapsulFrame : Constants.miniPlayerCapsulFrameZero, height: expand ? Constants.miniPlayerCapsuleFrameHeight : Constants.miniPlayerCapsulFrameZero)
                .opacity(expand ? Constants.miniPlayerCapsuleOpacity : Constants.miniPlayerCapsuleOpacityZero)
                .padding(.top,expand ? safeArea?.top : Constants.miniPlayerZero)
                .padding(.vertical, expand ? Constants.miniPlayerCapsulePadding : Constants.miniPlayerZero)
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
                HStack {
                    Slider(value: $trackSlider)
                }
                .padding(.horizontal)
                //Button...
                HStack(spacing: Constants.miniPlayerButtonHStackSpacing) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.system(size: Constants.miniPlayerButtonPlaySize))
                            .foregroundColor(.primary)
                    }
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                Spacer(minLength: Constants.miniPlayerSpacerMinLenght)
                HStack(spacing: Constants.miniPlayerSliderSpacing) {
                    Image(systemName: "speaker.fill")
                    Slider(value: $volum)
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                HStack(spacing: Constants.miniPlayerButtonBottomSpacing) {
                    
                    Button(action: {}) {
                        Image(systemName: "arrow.up.message")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.bottom, safeArea?.bottom == Constants.miniPlayerZero ? Constants.miniPlayerButtonBottomPadding : safeArea?.bottom)
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

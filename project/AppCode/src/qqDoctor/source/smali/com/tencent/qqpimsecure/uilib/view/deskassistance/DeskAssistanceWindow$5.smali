.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doResumeAction()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doPhoneRingAction()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

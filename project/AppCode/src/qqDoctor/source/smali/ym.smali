.class public final Lym;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lym;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lym;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

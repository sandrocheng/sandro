.class public final Lbgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)V
    .locals 0

    iput-object p1, p0, Lbgm;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbgm;->a:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->i(Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lpx;->a:Landroid/widget/Toast;

    const v2, 0x7f0b0b73

    invoke-static {v0, v1, v2}, Lfi;->a(Landroid/content/Context;Landroid/widget/Toast;I)V

    return-void
.end method

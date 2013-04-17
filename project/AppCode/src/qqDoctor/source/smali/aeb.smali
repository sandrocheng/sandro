.class public final Laeb;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Laeb;->a:Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Laeb;->a:Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

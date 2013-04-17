.class public final Ladp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;)V
    .locals 0

    iput-object p1, p0, Ladp;->a:Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Ladp;->a:Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/LowSDKwarningActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

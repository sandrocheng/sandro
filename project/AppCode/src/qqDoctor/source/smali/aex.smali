.class public final Laex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Laex;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "http://aq.qq.com/lost_pwd?lang=zh_cn&login_type=normal&source_id=2369"

    iget-object v1, p0, Laex;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-static {v0, v1}, Lds;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

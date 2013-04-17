.class public final Lafo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V
    .locals 0

    iput-object p1, p0, Lafo;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lafo;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

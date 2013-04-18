.class final Lcom/keniu/security/g/h;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/keniu/security/g/h;->a:Lcom/keniu/security/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net/thread-22658154-1-1.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 616
    iget-object v1, p0, Lcom/keniu/security/g/h;->a:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 618
    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/g/h;->a:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

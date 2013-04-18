.class final Lcom/keniu/security/main/aa;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/keniu/security/main/aa;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1015
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bbs.duba.net"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1017
    iget-object v1, p0, Lcom/keniu/security/main/aa;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1019
    if-nez v1, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/aa;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

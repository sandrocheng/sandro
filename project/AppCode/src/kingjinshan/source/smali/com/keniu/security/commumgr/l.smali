.class final Lcom/keniu/security/commumgr/l;
.super Ljava/lang/Object;
.source "OnekeyCallSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/keniu/security/commumgr/l;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 326
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/keniu/security/commumgr/l;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

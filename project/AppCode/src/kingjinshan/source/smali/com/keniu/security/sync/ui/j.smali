.class final Lcom/keniu/security/sync/ui/j;
.super Ljava/lang/Object;
.source "RegisterAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/RegisterAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/keniu/security/sync/ui/j;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/keniu/security/sync/ui/j;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/RegisterAct;->a(Lcom/keniu/security/sync/ui/RegisterAct;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    return-void
.end method

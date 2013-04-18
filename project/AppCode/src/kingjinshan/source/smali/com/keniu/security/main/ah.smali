.class final Lcom/keniu/security/main/ah;
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
    .line 1511
    iput-object p1, p0, Lcom/keniu/security/main/ah;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/keniu/security/main/ah;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keniu/security/main/MainActivity;->g:Z

    .line 1516
    iget-object v0, p0, Lcom/keniu/security/main/ah;->a:Lcom/keniu/security/main/MainActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    .line 1517
    iget-object v0, p0, Lcom/keniu/security/main/ah;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 1518
    return-void
.end method

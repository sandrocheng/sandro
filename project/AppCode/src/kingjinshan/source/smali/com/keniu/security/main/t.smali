.class final Lcom/keniu/security/main/t;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/keniu/security/main/t;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/keniu/security/main/t;->a:Lcom/keniu/security/main/MainActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 903
    iget-object v0, p0, Lcom/keniu/security/main/t;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->c()V

    .line 905
    return-void
.end method

.class final Lcom/keniu/security/main/o;
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
    .line 735
    iput-object p1, p0, Lcom/keniu/security/main/o;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/keniu/security/main/o;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->p(Lcom/keniu/security/main/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 740
    return-void
.end method

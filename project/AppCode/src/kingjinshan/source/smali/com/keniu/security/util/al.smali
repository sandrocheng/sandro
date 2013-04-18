.class final Lcom/keniu/security/util/al;
.super Ljava/lang/Object;
.source "MyAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/MyAlertController;

.field final synthetic b:Lcom/keniu/security/util/ai;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/ai;Lcom/keniu/security/util/MyAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/keniu/security/util/al;->b:Lcom/keniu/security/util/ai;

    iput-object p2, p0, Lcom/keniu/security/util/al;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lcom/keniu/security/util/al;->b:Lcom/keniu/security/util/ai;

    iget-object v0, v0, Lcom/keniu/security/util/ai;->v:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/keniu/security/util/al;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->j(Lcom/keniu/security/util/MyAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 926
    iget-object v0, p0, Lcom/keniu/security/util/al;->b:Lcom/keniu/security/util/ai;

    iget-boolean v0, v0, Lcom/keniu/security/util/ai;->E:Z

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/keniu/security/util/al;->a:Lcom/keniu/security/util/MyAlertController;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->j(Lcom/keniu/security/util/MyAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 929
    :cond_0
    return-void
.end method

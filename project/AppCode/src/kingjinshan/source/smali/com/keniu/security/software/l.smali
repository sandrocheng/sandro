.class final Lcom/keniu/security/software/l;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/k;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/keniu/security/software/l;->a:Lcom/keniu/security/software/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1093
    check-cast p1, Landroid/widget/CheckBox;

    .line 1094
    iget-object v0, p0, Lcom/keniu/security/software/l;->a:Lcom/keniu/security/software/k;

    iget-object v0, v0, Lcom/keniu/security/software/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/a;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/d/a;->b(Z)V

    .line 1096
    return-void
.end method

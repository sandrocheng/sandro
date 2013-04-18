.class final Lcom/keniu/security/software/al;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/ak;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    new-instance v1, Lcom/keniu/security/software/au;

    iget-object v2, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v2, v2, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v2, v2, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {v1, v2}, Lcom/keniu/security/software/au;-><init>(Lcom/keniu/security/software/SoftwareManager2;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/Comparator;)V

    .line 1096
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->D(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;I)I

    .line 1103
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->C(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1104
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 1106
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/software/al;->a:Lcom/keniu/security/software/ak;

    iget-object v0, v0, Lcom/keniu/security/software/ak;->b:Lcom/keniu/security/software/aj;

    iget-object v0, v0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;I)I

    goto :goto_0
.end method

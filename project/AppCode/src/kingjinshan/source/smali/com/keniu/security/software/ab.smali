.class final Lcom/keniu/security/software/ab;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/keniu/security/software/ab;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 721
    check-cast p1, Landroid/widget/CheckBox;

    .line 722
    iget-object v0, p0, Lcom/keniu/security/software/ab;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 725
    const-string v1, "hidesoftwareremoverootdialog"

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 728
    return-void
.end method

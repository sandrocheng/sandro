.class final Lcom/keniu/security/software/h;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/keniu/security/software/h;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 486
    check-cast p1, Landroid/widget/CheckBox;

    .line 487
    iget-object v0, p0, Lcom/keniu/security/software/h;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/keniu/security/software/h;->a:Lcom/keniu/security/software/APKManagerActivity;

    const v2, 0x7f0b0564

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 494
    return-void
.end method

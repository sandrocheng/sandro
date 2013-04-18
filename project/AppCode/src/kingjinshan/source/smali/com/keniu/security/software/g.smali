.class final Lcom/keniu/security/software/g;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/keniu/security/software/g;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/keniu/security/software/g;->a:Lcom/keniu/security/software/APKManagerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->removeDialog(I)V

    .line 463
    return-void
.end method

.class final Lcom/keniu/security/software/j;
.super Ljava/lang/Object;
.source "APKManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/keniu/security/software/j;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/keniu/security/software/j;->a:Lcom/keniu/security/software/APKManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->removeDialog(I)V

    .line 512
    return-void
.end method

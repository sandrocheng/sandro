.class final Lcom/keniu/security/process/d;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/keniu/security/process/d;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/process/d;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    const-class v2, Lcom/keniu/security/process/ProcessConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    iget-object v1, p0, Lcom/keniu/security/process/d;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/ProcessManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.class final Lcom/keniu/security/process/j;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/keniu/security/process/j;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/keniu/security/process/j;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/keniu/security/process/j;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/b/c;->b()V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/j;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessManagerActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1027
    return-void
.end method

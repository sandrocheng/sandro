.class public final Lct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lct;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lct;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lct;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    const-class v3, Lcom/tencent/powermanager/ui/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

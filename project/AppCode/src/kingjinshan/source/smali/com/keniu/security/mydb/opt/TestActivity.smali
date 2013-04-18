.class public Lcom/keniu/security/mydb/opt/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v1, Lcom/keniu/security/mydb/opt/j;

    invoke-direct {v1, p0}, Lcom/keniu/security/mydb/opt/j;-><init>(Lcom/keniu/security/mydb/opt/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/keniu/security/mydb/opt/TestActivity;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method

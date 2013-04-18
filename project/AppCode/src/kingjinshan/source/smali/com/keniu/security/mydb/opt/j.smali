.class final Lcom/keniu/security/mydb/opt/j;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/mydb/opt/TestActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/mydb/opt/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/keniu/security/mydb/opt/j;->a:Lcom/keniu/security/mydb/opt/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/j;->a:Lcom/keniu/security/mydb/opt/TestActivity;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/i;->a(Landroid/content/Context;)V

    .line 18
    const-string v0, "\u6e56\u5317\u6d59\u6c5f"

    const-string v1, "\u6e56\u5317\u73e0\u6c5f"

    invoke-static {v0, v1}, Lcom/keniu/security/mydb/opt/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    return-void
.end method

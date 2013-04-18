.class public Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "PreventTheftHelpActivity.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "extra_title"

    sput-object v0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->a:Ljava/lang/String;

    .line 18
    const-string v0, "extra_url"

    sput-object v0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/keniu/security/main/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->c:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 35
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    return-void
.end method

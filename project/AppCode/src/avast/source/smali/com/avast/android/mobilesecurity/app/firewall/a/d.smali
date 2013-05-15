.class public Lcom/avast/android/mobilesecurity/app/firewall/a/d;
.super Lcom/avast/android/generic/d/d;
.source "DirtyProviderDAO.java"


# instance fields
.field private c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/generic/util/x;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/d/d;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/generic/util/x;)V

    .line 30
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/d;->c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/d/d;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 44
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/d;->c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/d;->c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 56
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/d/d;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/d;->c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/d;->c:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/d/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

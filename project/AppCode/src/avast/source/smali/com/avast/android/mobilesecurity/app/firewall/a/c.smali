.class public Lcom/avast/android/mobilesecurity/app/firewall/a/c;
.super Lcom/avast/android/mobilesecurity/b/a;
.source "DirtyChangeableUriCursorDAO.java"


# instance fields
.field private b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/b/a;-><init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;)V

    .line 21
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/avast/android/mobilesecurity/b/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/avast/android/mobilesecurity/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->b:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->a()V

    .line 27
    invoke-super {p0, p1, p2}, Lcom/avast/android/mobilesecurity/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.class public Lcom/avast/android/mobilesecurity/engine/internal/c;
.super Ljava/lang/Object;
.source "CommunityIqWrapper.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    if-nez p2, :cond_0

    .line 190
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 193
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 196
    const-string v1, "vps_version"

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->d(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/y;->a()Ljava/net/URI;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    const-string v1, "communityiq_server_uri"

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    return-object p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/ad;Landroid/os/Bundle;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 65
    if-nez p3, :cond_0

    .line 66
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 69
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/d;->a:[I

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ae;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 103
    :goto_0
    if-eq v0, v1, :cond_1

    .line 104
    const-string v1, "update_check_result"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_1
    sget-object v0, Lcom/avast/android/generic/g/e;->e:Lcom/avast/android/generic/g/e;

    invoke-static {v0, p0, p1, p3}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 71
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/g/g;->b:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/g/g;->c:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/g/g;->d:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 87
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/g/g;->e:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_5
    sget-object v0, Lcom/avast/android/generic/g/g;->f:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_6
    sget-object v0, Lcom/avast/android/generic/g/g;->g:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 99
    :pswitch_7
    sget-object v0, Lcom/avast/android/generic/g/g;->h:Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/g;->a()I

    move-result v0

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/af;Landroid/os/Bundle;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 129
    if-nez p3, :cond_0

    .line 130
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 133
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/d;->b:[I

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ag;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 164
    :goto_0
    if-eq v0, v1, :cond_1

    .line 165
    const-string v1, "update_result"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    :cond_1
    sget-object v0, Lcom/avast/android/generic/g/e;->f:Lcom/avast/android/generic/g/e;

    invoke-static {v0, p0, p1, p3}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 135
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/g/i;->b:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 139
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/g/i;->a:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 143
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/g/i;->c:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/g/i;->d:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 151
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/g/i;->e:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_5
    sget-object v0, Lcom/avast/android/generic/g/i;->f:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 159
    :pswitch_6
    sget-object v0, Lcom/avast/android/generic/g/i;->g:Lcom/avast/android/generic/g/i;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/i;->a()I

    move-result v0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "sendCommunityIqEvent"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 44
    invoke-static {p1, p2, p3}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    invoke-static {p0, p1, v0}, Lcom/avast/android/generic/internet/a/a;->b(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

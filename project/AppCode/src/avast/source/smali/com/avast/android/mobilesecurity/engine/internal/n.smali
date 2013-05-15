.class public Lcom/avast/android/mobilesecurity/engine/internal/n;
.super Ljava/lang/Object;
.source "ServerManager.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/y;

    const-string v1, "http"

    const-string v2, "ap.ff.avast.com"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "urlinfo/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->b:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 142
    const/4 v0, 0x1

    move v1, v0

    .line 145
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/y;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/q;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/h;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/h;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/h;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/h;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/h;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->a:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v0, v2}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 172
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/y;->a([B)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 179
    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 183
    :cond_2
    return-object p2

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/y;

    const-string v1, "http"

    const-string v2, "ab.ff.avast.com"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cgi-bin/submit50.cgi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->a:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/y;

    const-string v1, "http"

    const-string v2, "au.ff.avast.com"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->c:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/y;

    const-string v1, "http"

    const-string v2, "al.ff.avast.com"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "F/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->d:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/y;

    const-string v1, "http"

    const-string v2, "ta.ff.avast.com"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "F/"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->g:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/y;Lcom/avast/android/mobilesecurity/engine/q;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    return-object v0
.end method

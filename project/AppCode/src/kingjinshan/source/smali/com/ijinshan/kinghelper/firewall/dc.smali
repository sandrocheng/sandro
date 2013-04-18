.class public final Lcom/ijinshan/kinghelper/firewall/dc;
.super Ljava/lang/Object;
.source "IpdialPrefManager.java"


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final b:Ljava/lang/String; = "ip_dial_no_use_number"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f0b0080

    .line 32
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/keniu/security/a;->Y()Z

    move-result v1

    if-nez v1, :cond_5

    .line 35
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v4, v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 40
    :cond_0
    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    const v2, 0x7f0b007f

    invoke-static {v2, v1}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    const-string v2, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v4, v2}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 55
    :cond_2
    const-string v2, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    const-string v3, "ip_zidong_dial_type"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ip_zidong_dial_type"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    .line 60
    :goto_0
    if-eqz v3, :cond_7

    .line 63
    const-string v2, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-static {v4, v2}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 77
    :cond_3
    :goto_1
    const-string v2, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    const-string v2, "ip_zidong_dial_type"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "ip_zidong_dial_type"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    .line 82
    :goto_2
    if-eqz v2, :cond_a

    .line 85
    const-string v1, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-static {v4, v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 99
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/keniu/security/a;->Z()V

    .line 101
    :cond_5
    return-void

    :cond_6
    move v3, v6

    .line 58
    goto :goto_0

    .line 66
    :cond_7
    const-string v3, "ip_zidong_dial_type"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 67
    if-eqz v2, :cond_8

    .line 69
    const-string v2, "\u62e8\u6253\u6240\u6709\u7535\u8bdd\u65f6"

    invoke-static {v4, v2}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_8
    const-string v2, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v4, v2}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    goto :goto_1

    :cond_9
    move v2, v6

    .line 80
    goto :goto_2

    .line 88
    :cond_a
    const-string v2, "ip_zidong_dial_type"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    if-eqz v1, :cond_b

    .line 91
    const-string v1, "\u62e8\u6253\u957f\u9014\u65f6"

    invoke-static {v4, v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    goto :goto_3

    .line 94
    :cond_b
    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-static {v4, v1}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public static a(I)V
    .locals 1
    .parameter

    .prologue
    .line 247
    const v0, 0x7f0b00a7

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(II)V

    .line 248
    return-void
.end method

.method private static a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 202
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    const-string v1, "ip_zidong_dial_type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    const-string v1, "ip_dial_no_use_number"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 189
    const v0, 0x7f0b0080

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 1
    .parameter

    .prologue
    .line 258
    const v0, 0x7f0b00a6

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(II)V

    .line 259
    return-void
.end method

.method private static b(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->a()V

    .line 105
    const-string v0, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    const v1, 0x7f0b0080

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "\u4e0d\u4f7f\u7528IP\u62e8\u53f7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 110
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 112
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ip_dial_type_value2"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "ip_dial_no_use_number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "no_use_province_value"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ip_dial_header_value"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "local_province_city_value"

    aput-object v4, v2, v3

    .line 113
    array-length v3, v2

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 114
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public static c(I)V
    .locals 1
    .parameter

    .prologue
    .line 291
    const v0, 0x7f0b00a9

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(II)V

    .line 292
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    const v0, 0x7f0b0080

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 194
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    const-string v1, "ip_dial_no_use_number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    .line 167
    const-string v0, ""

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 265
    const v0, 0x7f0b00a4

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)V
    .locals 1
    .parameter

    .prologue
    .line 313
    const v0, 0x7f0b00ab

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(II)V

    .line 314
    return-void
.end method

.method private static e(I)I
    .locals 3
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    const v0, 0x7f0b00a4

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 270
    return-void
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 209
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    const-string v1, "ip_show_pop"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 276
    const v0, 0x7f0b00a8

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    const-string v1, "ip_show_pop"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 243
    const v0, 0x7f0b00a7

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(I)I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    const v0, 0x7f0b00a8

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 281
    return-void
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 254
    const v0, 0x7f0b00a6

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(I)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 298
    const v0, 0x7f0b00aa

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 287
    const v0, 0x7f0b00a9

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(I)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    const v0, 0x7f0b00aa

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 303
    return-void
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7f0b00ab

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(I)I

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 320
    const v0, 0x7f0b0086

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 321
    return-void
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 324
    const v0, 0x7f0b0086

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()Z
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/dc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    const-string v1, "ip_zidong_dial_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 342
    const v0, 0x7f0b0089

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 346
    const v0, 0x7f0b0089

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 347
    return-void
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 221
    const v0, 0x7f0b007f

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    const v0, 0x7f0b007f

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 226
    return-void
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 232
    const v0, 0x7f0b00a5

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static q(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    const v0, 0x7f0b00a5

    invoke-static {v0, p0}, Lcom/ijinshan/kinghelper/firewall/dc;->b(ILjava/lang/String;)V

    .line 237
    return-void
.end method

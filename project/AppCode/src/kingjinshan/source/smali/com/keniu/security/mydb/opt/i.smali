.class public final Lcom/keniu/security/mydb/opt/i;
.super Ljava/lang/Object;
.source "NumberLocation.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keniu/security/mydb/opt/i;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/keniu/security/mydb/opt/i;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/keniu/security/mydb/opt/i;->c:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/keniu/security/mydb/opt/a;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/keniu/security/mydb/opt/i;

    const-string v1, "local number"

    const-string v2, "unknow number"

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/mydb/opt/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "010"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "0956"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "0998"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "0999"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "13300034444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "13300044444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "18100000000"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "13700194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "02480194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "02470194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "02410194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "022799"

    const-string v2, "japan xiantai"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "022800"

    const-string v2, "japan??"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/mydb/opt/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/keniu/security/mydb/opt/i;

    const-string v1, "local number"

    const-string v2, "unknow number"

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/mydb/opt/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "010"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    const-string v1, "0956"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    const-string v1, "0998"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    const-string v1, "0999"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const-string v1, "13300034444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    const-string v1, "13300044444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    const-string v1, "18100000000"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const-string v1, "13700194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    const-string v1, "02480194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    const-string v1, "02470194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    const-string v1, "02410194444"

    const-string v2, "default"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    const-string v1, "022799"

    const-string v2, "japan xiantai"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    const-string v1, "022800"

    const-string v2, "japan??"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/mydb/opt/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 147
    if-nez p0, :cond_1

    move-object v0, p1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_1
    invoke-static {v0}, Lcom/keniu/security/mydb/opt/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/keniu/security/mydb/opt/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    move-object v0, p1

    .line 158
    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x30

    const/4 v4, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p2

    .line 142
    :cond_1
    :goto_0
    return-object v0

    .line 85
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    const-string v0, "+81"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_1
    const-string v1, "0081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_3
    const-string v1, "81"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Lcom/keniu/security/mydb/opt/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/keniu/security/mydb/opt/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_7
    move-object v0, p2

    goto :goto_0

    .line 96
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_d

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_9

    move-object v0, p2

    .line 98
    goto :goto_0

    .line 100
    :cond_9
    invoke-static {p1}, Lcom/keniu/security/mydb/opt/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "unkown_str"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    if-ne v0, v5, :cond_a

    .line 105
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/i;->b:Landroid/content/Context;

    const v1, 0x7f0b024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_a
    if-le v0, v5, :cond_b

    const/16 v1, 0x33

    if-ge v0, v1, :cond_b

    .line 108
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_2
    const-string v1, "0"

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 127
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/mydb/opt/a;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "unkown_str"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/keniu/security/mydb/opt/i;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 109
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_c

    .line 110
    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    move-object v0, p2

    .line 112
    goto/16 :goto_0

    .line 116
    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_e

    .line 118
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 120
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    :cond_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-le v0, v1, :cond_10

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_10

    .line 122
    iget-object v0, p0, Lcom/keniu/security/mydb/opt/i;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    move-object v0, p2

    .line 124
    goto/16 :goto_0

    .line 132
    :cond_11
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 133
    const-string v1, "\u6e56\u5317\u8944\u9633(\u539f\u8944\u6a0a)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 134
    const-string v0, "\u6e56\u5317\u8944\u9633"

    goto/16 :goto_0

    .line 135
    :cond_12
    const-string v1, "\u7518\u8083\u897f\u5cf0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    .line 136
    const-string v0, "\u7518\u8083\u5e86\u9633"

    goto/16 :goto_0

    .line 137
    :cond_13
    const-string v1, "\u65b0\u7586\u5e93\u5c14\u52d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 138
    const-string v0, "\u65b0\u7586\u5df4\u5dde"

    goto/16 :goto_0

    .line 139
    :cond_14
    const-string v1, "\u56db\u5ddd\u8fbe\u53bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const-string v0, "\u56db\u5ddd\u8fbe\u5dde"

    goto/16 :goto_0

    :cond_15
    move-object v0, p1

    goto/16 :goto_1
.end method

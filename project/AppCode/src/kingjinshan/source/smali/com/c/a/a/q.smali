.class public final Lcom/c/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/c/a/a/q;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/c/a/a/q;->b:Ljava/util/Locale;

    .line 30
    sget-boolean v0, Lcom/c/a/a/n;->b:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/c/a/a/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/c/a/a/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/a/a/n;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/c/a/a/n;->d:Ljava/lang/String;

    .line 36
    sget-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/a/a/j;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/n;->c:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/c/a/a/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/c/a/a/n;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/c/a/a/n;->b:Z

    .line 39
    :cond_0
    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    const-string v0, " lO>_g7L\'\u0017-t^=\u0016fuZ>\u0007)j\u0015-\n%7H+\u0004:{SaZ/z\u0006~Wn"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    rem-int/lit8 v3, v2, 0x5

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x65

    :goto_1
    aget-char v4, v0, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x48

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x18

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x3b

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x4e

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget-boolean v0, Lcom/c/a/a/n;->b:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Lcom/c/a/a/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5168\u56fd"

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ch=UTF-8&fd=5&rn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&pn=1&tp=1&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v2, Lcom/c/a/a/ah;

    iget-object v3, p0, Lcom/c/a/a/q;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/c/a/a/ah;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/a/a/ah;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lcom/c/a/a/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    if-eqz v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/c/a/a/q;->b:Ljava/util/Locale;

    invoke-static {v2, v0}, Lcom/c/a/a/o;->b(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

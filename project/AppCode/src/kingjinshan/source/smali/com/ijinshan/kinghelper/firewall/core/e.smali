.class public final Lcom/ijinshan/kinghelper/firewall/core/e;
.super Ljava/lang/Object;
.source "FirewallMessageAdjust.java"


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field public static d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    .line 27
    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->b:Ljava/util/List;

    .line 28
    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->c:Ljava/util/List;

    .line 29
    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/core/f;
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/f;

    invoke-direct {v2}, Lcom/ijinshan/kinghelper/firewall/core/f;-><init>()V

    .line 90
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->a:Z

    move-object/from16 p0, v2

    .line 136
    :goto_0
    return-object p0

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v3, 0x14

    move/from16 v0, p0

    move v1, v3

    if-gt v0, v1, :cond_1

    .line 96
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->a:Z

    .line 97
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->i:Z

    move-object/from16 p0, v2

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    const/16 p0, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p0

    move v1, v3

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 p0, 0x0

    :goto_2
    if-eqz p0, :cond_5

    .line 102
    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 103
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->f:Z

    move-object/from16 p0, v2

    .line 104
    goto :goto_0

    .line 101
    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const/16 p0, 0x1

    goto :goto_2

    .line 107
    :cond_5
    const/16 p0, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p0

    move v1, v3

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e00

    if-lt v3, v4, :cond_6

    const v4, 0x9fbf

    if-gt v3, v4, :cond_6

    const/16 p0, 0x0

    :goto_4
    if-eqz p0, :cond_8

    .line 108
    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 109
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->a:Z

    .line 110
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->g:Z

    move-object/from16 p0, v2

    .line 111
    goto/16 :goto_0

    .line 107
    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_7
    const/16 p0, 0x1

    goto :goto_4

    .line 114
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_13

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_12

    const/16 v6, 0x32

    if-gt v5, v6, :cond_12

    const/16 v6, 0x32

    if-ne v5, v6, :cond_10

    add-int/lit8 v6, v4, 0xa

    if-gt v6, v3, :cond_10

    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v4, 0x2

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v4, 0x3

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v4, 0x5

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v11, v4, 0x6

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v12, v4, 0x8

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v4, 0x9

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v14, v4, 0x4

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v4, 0x7

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2d

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    const/16 v16, 0x2f

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    :cond_9
    const/16 v14, 0x2d

    if-eq v15, v14, :cond_a

    const/16 v14, 0x2f

    if-ne v15, v14, :cond_b

    :cond_a
    const/16 v14, 0x30

    if-ne v7, v14, :cond_b

    invoke-static {v8}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v9}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x30

    if-ne v10, v7, :cond_c

    invoke-static {v11}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_b

    const/16 v7, 0x30

    if-lt v12, v7, :cond_e

    const/16 v7, 0x32

    if-gt v12, v7, :cond_e

    invoke-static {v13}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    :goto_7
    if-eqz v7, :cond_b

    const/4 v6, 0x1

    :cond_b
    if-eqz v6, :cond_10

    add-int/lit8 v4, v4, 0x9

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_c
    const/16 v7, 0x31

    if-ne v10, v7, :cond_d

    const/16 v7, 0x30

    if-lt v11, v7, :cond_d

    const/16 v7, 0x32

    if-gt v11, v7, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    const/16 v7, 0x33

    if-ne v12, v7, :cond_f

    const/16 v7, 0x30

    if-lt v13, v7, :cond_f

    const/16 v7, 0x31

    if-gt v13, v7, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    :cond_10
    add-int/lit8 v6, v4, 0x5

    if-gt v6, v3, :cond_12

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v4, 0x3

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v4, 0x4

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x3a

    if-ne v7, v11, :cond_18

    const/16 v7, 0x30

    if-lt v8, v7, :cond_18

    const/16 v7, 0x35

    if-gt v8, v7, :cond_18

    invoke-static {v9}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 v7, 0x32

    if-ne v5, v7, :cond_11

    const/16 v7, 0x30

    if-lt v6, v7, :cond_11

    const/16 v7, 0x33

    if-gt v6, v7, :cond_11

    const/4 v6, 0x1

    :goto_9
    if-eqz v6, :cond_12

    add-int/lit8 v4, v4, 0x4

    goto :goto_8

    :cond_11
    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v2

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 115
    move-object v0, v2

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    move-object/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ijinshan/kinghelper/firewall/core/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v2

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 116
    move-object v0, v2

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    move-object/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/core/g;

    move-result-object p0

    .line 118
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/core/g;->b:Z

    move v3, v0

    if-eqz v3, :cond_14

    .line 119
    move-object/from16 v0, p1

    move-object v1, v2

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    .line 120
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->h:Z

    move-object/from16 p0, v2

    .line 121
    goto/16 :goto_0

    .line 124
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/core/g;->a:Z

    move/from16 p0, v0

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->c:Z

    .line 125
    move-object v0, v2

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/core/f;->c:Z

    move/from16 p0, v0

    if-eqz p0, :cond_15

    .line 126
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->b:Z

    move-object/from16 p0, v2

    .line 127
    goto/16 :goto_0

    .line 130
    :cond_15
    move-object v0, v2

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/core/f;->j:Ljava/lang/String;

    move-object/from16 p0, v0

    invoke-static/range {p0 .. p0}, Lcom/ijinshan/kinghelper/firewall/core/e;->b(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x7

    move/from16 v0, p0

    move/from16 v1, p1

    if-lt v0, v1, :cond_17

    const/16 p0, 0x1

    :goto_a
    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->d:Z

    .line 132
    move-object v0, v2

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/core/f;->d:Z

    move/from16 p0, v0

    if-eqz p0, :cond_16

    .line 133
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v2

    iput-boolean v0, v1, Lcom/ijinshan/kinghelper/firewall/core/f;->b:Z

    :cond_16
    move-object/from16 p0, v2

    .line 136
    goto/16 :goto_0

    .line 130
    :cond_17
    const/16 p0, 0x0

    goto :goto_a

    :cond_18
    move v6, v10

    goto/16 :goto_9
.end method

.method public static a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/core/g;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 167
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/g;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/core/g;-><init>()V

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 169
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 172
    iput-boolean v5, v1, Lcom/ijinshan/kinghelper/firewall/core/g;->a:Z

    .line 173
    if-gt v0, v5, :cond_2

    move v0, v6

    :goto_0
    if-eqz v0, :cond_1

    .line 174
    iput-boolean v6, v1, Lcom/ijinshan/kinghelper/firewall/core/g;->a:Z

    .line 175
    iput-boolean v5, v1, Lcom/ijinshan/kinghelper/firewall/core/g;->b:Z

    .line 181
    :cond_1
    return-object v1

    .line 173
    :cond_2
    sub-int/2addr v0, v5

    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_3
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v0, 0x40

    if-ne v2, v0, :cond_6

    move v0, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 32
    const-class v0, Lcom/ijinshan/kinghelper/firewall/core/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 37
    array-length v2, v1

    if-le v2, v3, :cond_1

    .line 38
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 39
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 40
    aget-object v4, v1, v3

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v5, v9

    .line 43
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 44
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 45
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 46
    sget-object v8, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->b:Ljava/util/List;

    if-nez v1, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->b:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move v2, v9

    .line 58
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 59
    aget-object v3, v1, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/core/e;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    :cond_2
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->c:Ljava/util/List;

    if-nez v1, :cond_3

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->c:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move v2, v9

    .line 69
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 70
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/core/e;->c:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 74
    :cond_3
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    const-string v3, " "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v9

    .line 80
    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 81
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    aget-object v4, v1, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 84
    :cond_4
    monitor-exit v0

    return-void

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 289
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(CC)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x1

    .line 293
    if-lt p0, v2, :cond_0

    const/16 v0, 0x32

    if-gt p0, v0, :cond_0

    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    const/16 v0, 0x33

    if-ne p0, v0, :cond_1

    if-lt p1, v2, :cond_1

    const/16 v0, 0x31

    if-gt p1, v0, :cond_1

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    if-gt p1, v3, :cond_0

    move v0, v4

    .line 206
    :goto_0
    return v0

    .line 190
    :cond_0
    sub-int v0, p1, v3

    :goto_1
    if-ltz v0, :cond_4

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 196
    :cond_2
    const/16 v0, 0x40

    if-ne v1, v0, :cond_4

    move v0, v3

    .line 200
    goto :goto_0

    .line 190
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 230
    move v0, v5

    move v1, v5

    move v2, v5

    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 235
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 238
    if-le v2, v1, :cond_0

    move v1, v2

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/16 v4, 0x4e00

    if-lt v3, v4, :cond_2

    const v4, 0x9fbf

    if-gt v3, v4, :cond_2

    move v2, v5

    .line 243
    goto :goto_1

    .line 244
    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_3

    move v2, v5

    .line 245
    goto :goto_1

    .line 246
    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    move v2, v5

    .line 247
    goto :goto_1

    .line 249
    :cond_4
    return v1
.end method

.method private static b(CC)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x1

    .line 303
    if-ne p0, v2, :cond_0

    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 308
    :goto_0
    return v0

    .line 305
    :cond_0
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1

    if-lt p1, v2, :cond_1

    const/16 v0, 0x32

    if-gt p1, v0, :cond_1

    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 140
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 143
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    move v0, v3

    .line 148
    :goto_1
    return v0

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 152
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    const/16 v2, 0x4e00

    if-lt v1, v2, :cond_0

    const v2, 0x9fbf

    if-gt v1, v2, :cond_0

    move v0, v3

    .line 158
    :goto_1
    return v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    .line 211
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/core/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v2, v4

    .line 214
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 215
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v4

    .line 220
    :goto_1
    if-eqz v0, :cond_0

    move v0, v5

    .line 225
    :goto_2
    return v0

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method private static f(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    move v1, v0

    .line 254
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 256
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 257
    add-int/lit8 v1, v1, 0x1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return v1
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 269
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 272
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/core/e;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/core/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 316
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 318
    const/16 v4, 0x30

    if-lt v3, v4, :cond_9

    const/16 v4, 0x32

    if-gt v3, v4, :cond_9

    .line 321
    const/16 v4, 0x32

    if-ne v3, v4, :cond_7

    add-int/lit8 v4, v2, 0xa

    if-gt v4, v1, :cond_7

    .line 322
    const/4 v4, 0x0

    .line 323
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 324
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 325
    add-int/lit8 v7, v2, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 326
    add-int/lit8 v8, v2, 0x5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 327
    add-int/lit8 v9, v2, 0x6

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 328
    add-int/lit8 v10, v2, 0x8

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 329
    add-int/lit8 v11, v2, 0x9

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 331
    add-int/lit8 v12, v2, 0x4

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 332
    add-int/lit8 v13, v2, 0x7

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 333
    const/16 v14, 0x2d

    if-eq v12, v14, :cond_0

    const/16 v14, 0x2f

    if-ne v12, v14, :cond_2

    .line 335
    :cond_0
    const/16 v12, 0x2d

    if-eq v13, v12, :cond_1

    const/16 v12, 0x2f

    if-ne v13, v12, :cond_2

    .line 337
    :cond_1
    const/16 v12, 0x30

    if-ne v5, v12, :cond_2

    .line 339
    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v7}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    const/16 v5, 0x30

    if-ne v8, v5, :cond_3

    invoke-static {v9}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    .line 343
    const/16 v5, 0x30

    if-lt v10, v5, :cond_5

    const/16 v5, 0x32

    if-gt v10, v5, :cond_5

    invoke-static {v11}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 346
    const/4 v4, 0x1

    .line 349
    :cond_2
    if-eqz v4, :cond_7

    .line 350
    add-int/lit8 v2, v2, 0x9

    .line 316
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_3
    const/16 v5, 0x31

    if-ne v8, v5, :cond_4

    const/16 v5, 0x30

    if-lt v9, v5, :cond_4

    const/16 v5, 0x32

    if-gt v9, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 343
    :cond_5
    const/16 v5, 0x33

    if-ne v10, v5, :cond_6

    const/16 v5, 0x30

    if-lt v11, v5, :cond_6

    const/16 v5, 0x31

    if-gt v11, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 355
    :cond_7
    add-int/lit8 v4, v2, 0x5

    if-gt v4, v1, :cond_9

    .line 357
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 358
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 359
    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 360
    add-int/lit8 v7, v2, 0x4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 361
    const/4 v8, 0x0

    .line 363
    const/16 v9, 0x3a

    if-ne v5, v9, :cond_b

    .line 365
    const/16 v5, 0x30

    if-lt v6, v5, :cond_b

    const/16 v5, 0x35

    if-gt v6, v5, :cond_b

    .line 367
    invoke-static {v7}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 369
    const/16 v5, 0x32

    if-ne v3, v5, :cond_8

    const/16 v5, 0x30

    if-lt v4, v5, :cond_8

    const/16 v5, 0x33

    if-gt v4, v5, :cond_8

    .line 371
    const/4 v4, 0x1

    .line 378
    :goto_4
    if-eqz v4, :cond_9

    .line 379
    add-int/lit8 v2, v2, 0x4

    .line 380
    goto :goto_3

    .line 373
    :cond_8
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/core/e;->a(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 374
    const/4 v4, 0x1

    goto :goto_4

    .line 384
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 386
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    move v4, v8

    goto :goto_4
.end method

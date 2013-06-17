.class public Lcom/antivirus/core/scanners/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final c:I

.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/antivirus/core/scanners/t;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/antivirus/core/scanners/t;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/antivirus/core/scanners/t;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/t;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/t;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x270f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/google/b/e;->a(Ljava/lang/String;)Lcom/google/b/h;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/b/h;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 32

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v5, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/antivirus/core/e/e;

    iget v0, v3, Lcom/antivirus/core/e/e;->b:I

    move/from16 v22, v0

    iget v0, v3, Lcom/antivirus/core/e/e;->d:I

    move/from16 v16, v0

    iget-object v3, v3, Lcom/antivirus/core/e/e;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/antivirus/core/scanners/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    const/4 v4, 0x0

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const-string v3, ""

    const/4 v3, 0x0

    :try_start_0
    new-instance v7, Lcom/google/b/g;

    invoke-direct {v7}, Lcom/google/b/g;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/b/g;->a(Ljava/lang/String;)Lcom/google/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v6

    const-string v7, "EMGS_SIG"

    invoke-virtual {v6, v7}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    if-eqz v25, :cond_0

    const-string v6, "NAME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/google/b/e;->a(Ljava/lang/String;)Lcom/google/b/h;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v21, :cond_1

    :cond_1
    invoke-virtual {v6}, Lcom/google/b/h;->c()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "USES-ENGINE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/google/b/e;->a(Ljava/lang/String;)Lcom/google/b/h;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Lcom/google/b/h;->d()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    const-string v6, "PACKAGE-NAME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object v6

    if-eqz v6, :cond_32

    if-eqz v21, :cond_2

    :cond_2
    const-string v3, ""

    const-string v4, "NAME"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v4}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    const-string v7, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v7}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v21, :cond_3

    :cond_3
    new-instance v4, Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v4, v3, v6}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    move-object/from16 v17, v4

    :goto_1
    const-string v4, "RECEIVER"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/google/b/e;->b(Ljava/lang/String;)Lcom/google/b/a;

    move-result-object v28

    if-eqz v28, :cond_31

    const/4 v4, 0x0

    move v13, v4

    move v4, v5

    :goto_2
    invoke-virtual/range {v28 .. v28}, Lcom/google/b/a;->a()I

    move-result v5

    if-ge v13, v5, :cond_c

    const-string v5, ""

    const-string v6, ""

    const-string v6, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz v21, :cond_4

    :cond_4
    :try_start_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v14, "NAME"

    const-string v29, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v8, v14, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    move v14, v4

    move-object v4, v5

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v5

    const-string v6, "NAME"

    const-string v8, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_4
    if-eqz v21, :cond_5

    :cond_5
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v6

    const-string v8, "ACTION"

    const-string v29, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v8, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v7

    const-string v8, "ACTION"

    const-string v29, "REGEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v8, v1}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_6
    if-eqz v21, :cond_7

    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v29, "DATA"

    const-string v30, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v8, v1, v2}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v21, :cond_8

    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_9

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v9

    const-string v29, "DATA"

    const-string v30, "REGEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v9, v1, v2}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    move v4, v3

    :goto_5
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v3, v4

    move v4, v14

    goto/16 :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    if-eqz v21, :cond_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v4

    if-eqz v21, :cond_a

    :cond_a
    const/4 v14, 0x1

    move-object v4, v5

    goto/16 :goto_3

    :cond_b
    new-instance v3, Lcom/antivirus/core/scanners/a/a/g;

    invoke-direct/range {v3 .. v9}, Lcom/antivirus/core/scanners/a/a/g;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    if-nez v4, :cond_0

    :goto_6
    const-string v5, "SERVICE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/google/b/e;->b(Ljava/lang/String;)Lcom/google/b/a;

    move-result-object v9

    if-eqz v9, :cond_2f

    const/4 v5, 0x0

    move/from16 v31, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v31

    :goto_7
    invoke-virtual {v9}, Lcom/google/b/a;->a()I

    move-result v6

    if-ge v3, v6, :cond_11

    const-string v6, ""

    const-string v7, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v13

    const-string v14, "NAME"

    const-string v28, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v14, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v7

    const-string v13, "NAME"

    const-string v14, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v14}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_d
    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v13

    const-string v14, "ACTION"

    const-string v28, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v14, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v14, "ACTION"

    const-string v28, "REGEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v8, v14, v1}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_3
    move-exception v5

    if-eqz v21, :cond_f

    :cond_f
    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    new-instance v4, Lcom/antivirus/core/scanners/a/a/h;

    invoke-direct {v4, v6, v7, v13, v8}, Lcom/antivirus/core/scanners/a/a/h;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    if-nez v5, :cond_0

    :goto_a
    const-string v3, "ACTIVITY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->b(Ljava/lang/String;)Lcom/google/b/a;

    move-result-object v7

    if-eqz v7, :cond_15

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v7}, Lcom/google/b/a;->a()I

    move-result v6

    if-ge v3, v6, :cond_14

    const-string v6, ""

    :try_start_4
    invoke-virtual {v7, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v9, "NAME"

    const-string v13, "NAME"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v13}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v6

    :goto_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v7, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v4

    const-string v8, "NAME"

    const-string v9, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v8, Lcom/antivirus/core/scanners/a/a/b;

    invoke-direct {v8, v6, v4}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catch_4
    move-exception v5

    if-eqz v21, :cond_13

    :cond_13
    const/4 v5, 0x1

    goto :goto_c

    :cond_14
    if-nez v5, :cond_0

    :cond_15
    const-string v3, "USES-PERMISSION"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->b(Ljava/lang/String;)Lcom/google/b/a;

    move-result-object v6

    if-eqz v6, :cond_17

    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v6}, Lcom/google/b/a;->a()I

    move-result v7

    if-ge v3, v7, :cond_17

    const-string v7, ""

    invoke-virtual {v6, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v7

    const-string v8, ""

    const-string v9, "NAME"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v6, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v9, ""

    const-string v13, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v13}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    new-instance v9, Lcom/antivirus/core/scanners/a/a/b;

    invoke-direct {v9, v7, v8}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    const-string v3, "META-DATA"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->b(Ljava/lang/String;)Lcom/google/b/a;

    move-result-object v9

    if-eqz v9, :cond_1d

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v9}, Lcom/google/b/a;->a()I

    move-result v6

    if-ge v3, v6, :cond_1c

    const-string v6, ""

    const-string v7, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v13

    const-string v14, "NAME"

    const-string v28, "NAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v14, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v6

    :goto_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v7

    const-string v13, "NAME"

    const-string v14, "REGEX"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v14}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_18
    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v13

    const-string v14, "VALUE"

    const-string v28, "VALUE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v14, v1}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_19

    invoke-virtual {v9, v3}, Lcom/google/b/a;->a(I)Lcom/google/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v8

    const-string v14, "VALUE"

    const-string v28, "REGEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v8, v14, v1}, Lcom/antivirus/core/scanners/t;->c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catch_5
    move-exception v5

    if-eqz v21, :cond_1a

    :cond_1a
    const/4 v5, 0x1

    goto :goto_f

    :cond_1b
    new-instance v4, Lcom/antivirus/core/scanners/a/a/h;

    invoke-direct {v4, v6, v7, v13, v8}, Lcom/antivirus/core/scanners/a/a/h;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_10

    :cond_1c
    if-nez v5, :cond_0

    :cond_1d
    const-string v3, "ACTIVITY-COUNT"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object v3

    if-eqz v3, :cond_2e

    const-string v5, ""

    const-string v6, "STATE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "(below|above|exactly|)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "COUNT"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/antivirus/core/scanners/t;->a(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0x270f

    if-eq v6, v3, :cond_0

    const/4 v3, 0x0

    if-eqz v5, :cond_1f

    const-string v7, "below"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->a:Lcom/antivirus/core/scanners/a/a/f;

    :cond_1e
    :goto_11
    const-string v7, "exactly"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->b:Lcom/antivirus/core/scanners/a/a/f;

    :cond_1f
    new-instance v13, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v13, v6, v3}, Lcom/antivirus/core/scanners/a/a/d;-><init>(ILcom/antivirus/core/scanners/a/a/f;)V

    :goto_12
    const-string v3, "RECEIVER-COUNT"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string v5, ""

    const-string v6, "STATE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "(below|above|exactly|)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "COUNT"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/antivirus/core/scanners/t;->a(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0x270f

    if-eq v6, v3, :cond_0

    if-eqz v21, :cond_20

    :cond_20
    const/4 v3, 0x0

    if-eqz v5, :cond_22

    const-string v7, "below"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->a:Lcom/antivirus/core/scanners/a/a/f;

    :cond_21
    :goto_13
    const-string v7, "exactly"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->b:Lcom/antivirus/core/scanners/a/a/f;

    :cond_22
    new-instance v15, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v15, v6, v3}, Lcom/antivirus/core/scanners/a/a/d;-><init>(ILcom/antivirus/core/scanners/a/a/f;)V

    :goto_14
    const-string v3, "SERVICE-COUNT"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object v3

    if-eqz v3, :cond_2c

    const-string v5, ""

    const-string v6, "STATE"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, Lcom/antivirus/core/scanners/t;->b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v21, :cond_23

    :cond_23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "(below|above|exactly|)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "COUNT"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/antivirus/core/scanners/t;->a(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v21, :cond_24

    :cond_24
    const/16 v3, 0x270f

    if-eq v6, v3, :cond_0

    if-eqz v21, :cond_25

    :cond_25
    const/4 v3, 0x0

    if-eqz v5, :cond_27

    const-string v7, "below"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->a:Lcom/antivirus/core/scanners/a/a/f;

    :cond_26
    :goto_15
    const-string v7, "exactly"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->b:Lcom/antivirus/core/scanners/a/a/f;

    :cond_27
    new-instance v14, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v14, v6, v3}, Lcom/antivirus/core/scanners/a/a/d;-><init>(ILcom/antivirus/core/scanners/a/a/f;)V

    :goto_16
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    move/from16 v0, v27

    if-gt v0, v3, :cond_0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v3, Lcom/antivirus/core/scanners/a/a/c;

    move-object/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v22

    move-object/from16 v7, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-direct/range {v3 .. v16}, Lcom/antivirus/core/scanners/a/a/c;-><init>(Ljava/lang/String;IILcom/antivirus/core/scanners/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/antivirus/core/scanners/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_28
    const-string v7, "above"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->c:Lcom/antivirus/core/scanners/a/a/f;

    goto/16 :goto_11

    :cond_29
    const-string v7, "above"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->c:Lcom/antivirus/core/scanners/a/a/f;

    goto/16 :goto_13

    :cond_2a
    const-string v7, "above"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    sget-object v3, Lcom/antivirus/core/scanners/a/a/f;->c:Lcom/antivirus/core/scanners/a/a/f;

    goto :goto_15

    :cond_2b
    return-void

    :cond_2c
    move-object/from16 v14, v19

    goto :goto_16

    :cond_2d
    move-object/from16 v15, v18

    goto/16 :goto_14

    :cond_2e
    move-object v13, v15

    goto/16 :goto_12

    :cond_2f
    move v5, v4

    move v4, v3

    goto/16 :goto_a

    :cond_30
    move v5, v6

    goto/16 :goto_4

    :cond_31
    move v4, v5

    goto/16 :goto_6

    :cond_32
    move-object/from16 v17, v4

    goto/16 :goto_1
.end method

.method private b(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/google/b/e;->a(Ljava/lang/String;)Lcom/google/b/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/b/h;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private c(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/b/e;->c(Ljava/lang/String;)Lcom/google/b/e;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/google/b/e;->a(Ljava/lang/String;)Lcom/google/b/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/b/h;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/a/a;ILcom/antivirus/core/scanners/u;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/core/scanners/a/a/c;->a(Lcom/antivirus/core/scanners/a/a;I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v3, v0, Lcom/antivirus/core/scanners/a/a/c;->a:Ljava/lang/String;

    iput-object v3, p3, Lcom/antivirus/core/scanners/u;->a:Ljava/lang/String;

    iget v3, v0, Lcom/antivirus/core/scanners/a/a/c;->c:I

    iput v3, p3, Lcom/antivirus/core/scanners/u;->b:I

    iget v0, v0, Lcom/antivirus/core/scanners/a/a/c;->d:I

    iput v0, p3, Lcom/antivirus/core/scanners/u;->c:I

    if-lez v4, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public a(Lcom/antivirus/core/scanners/a/a;Lcom/antivirus/core/scanners/w;I)Z
    .locals 3

    new-instance v0, Lcom/antivirus/core/scanners/u;

    invoke-direct {v0, p0}, Lcom/antivirus/core/scanners/u;-><init>(Lcom/antivirus/core/scanners/t;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/antivirus/core/scanners/t;->a(Lcom/antivirus/core/scanners/a/a;ILcom/antivirus/core/scanners/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/antivirus/core/scanners/u;->b:I

    iput v2, p2, Lcom/antivirus/core/scanners/w;->d:I

    iget-object v2, v0, Lcom/antivirus/core/scanners/u;->a:Ljava/lang/String;

    iput-object v2, p2, Lcom/antivirus/core/scanners/w;->c:Ljava/lang/String;

    iget v0, v0, Lcom/antivirus/core/scanners/u;->c:I

    iput v0, p2, Lcom/antivirus/core/scanners/w;->e:I

    :cond_0
    return v1
.end method

.method public a(Lcom/antivirus/core/scanners/aa;I)Z
    .locals 3

    new-instance v0, Lcom/antivirus/core/scanners/u;

    invoke-direct {v0, p0}, Lcom/antivirus/core/scanners/u;-><init>(Lcom/antivirus/core/scanners/t;)V

    iget-object v1, p1, Lcom/antivirus/core/scanners/aa;->l:Lcom/antivirus/core/scanners/a/a;

    invoke-virtual {p0, v1, p2, v0}, Lcom/antivirus/core/scanners/t;->a(Lcom/antivirus/core/scanners/a/a;ILcom/antivirus/core/scanners/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/antivirus/core/scanners/u;->b:I

    iput v2, p1, Lcom/antivirus/core/scanners/aa;->j:I

    iget-object v2, v0, Lcom/antivirus/core/scanners/u;->a:Ljava/lang/String;

    iput-object v2, p1, Lcom/antivirus/core/scanners/aa;->i:Ljava/lang/String;

    iget v0, v0, Lcom/antivirus/core/scanners/u;->c:I

    iput v0, p1, Lcom/antivirus/core/scanners/aa;->k:I

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

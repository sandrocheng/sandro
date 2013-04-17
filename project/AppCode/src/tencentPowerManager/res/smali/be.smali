.class public final Lbe;
.super Lfq;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfq;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbe;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbe;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    invoke-super {p0, p1}, Lfq;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbe;->b:Ljava/lang/String;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lbe;

    if-eqz v0, :cond_d

    check-cast p1, Lbe;

    iget-object v0, p0, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "isApk"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p1, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "apkPath"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_d

    iget-object v0, p0, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "apkPath"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    :goto_3
    if-eqz v0, :cond_d

    iget-object v0, p0, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "apkPath"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v0, p1, Lfq;->a:Ljava/util/HashMap;

    const-string v5, "apkPath"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/String;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v4, v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "pkgName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/String;

    :goto_6
    if-eqz v0, :cond_d

    iget-object v0, p1, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "pkgName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/String;

    :goto_7
    if-eqz v0, :cond_d

    iget-object v0, p0, Lfq;->a:Ljava/util/HashMap;

    const-string v4, "pkgName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/String;

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v0, p1, Lfq;->a:Ljava/util/HashMap;

    const-string v5, "pkgName"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/String;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v4, v0, :cond_c

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_7

    :cond_a
    move-object v0, v1

    goto :goto_8

    :cond_b
    move-object v0, v1

    goto :goto_9

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

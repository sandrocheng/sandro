.class public Lcom/avast/android/mobilesecurity/engine/a;
.super Ljava/lang/Object;
.source "AdvertisementCampaignInfo.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    .line 26
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/engine/a;->b:Z

    .line 31
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/engine/a;->c:Z

    .line 36
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/engine/a;->d:Z

    .line 49
    return-void
.end method

.method public static a([B)Lcom/avast/android/mobilesecurity/engine/a;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 141
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/a;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/a;-><init>()V

    .line 143
    const/4 v0, 0x0

    .line 144
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2, v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    const/4 v0, 0x4

    .line 147
    add-int/lit8 v2, v2, 0x4

    array-length v3, p0

    if-eq v2, v3, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/a;-><init>()V

    .line 193
    iput-boolean v6, v0, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    .line 196
    :goto_0
    return-object v0

    :cond_0
    move v2, v0

    .line 154
    :goto_1
    :try_start_1
    array-length v0, p0

    if-ge v2, v0, :cond_3

    .line 155
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v2}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 157
    add-int/lit8 v2, v2, 0x4

    .line 158
    add-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v2}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 164
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/c;->a(S)Lcom/avast/android/mobilesecurity/engine/c;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/b;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :cond_2
    :goto_2
    add-int v0, v2, v3

    move v2, v0

    goto :goto_1

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    add-int/lit8 v5, v2, 0x2

    invoke-static {p0, v0, v4, v5}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/mobilesecurity/engine/a;->b:Z

    goto :goto_2

    .line 175
    :pswitch_1
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    add-int/lit8 v5, v2, 0x2

    invoke-static {p0, v0, v4, v5}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/mobilesecurity/engine/a;->c:Z

    goto :goto_2

    .line 181
    :pswitch_2
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    add-int/lit8 v5, v2, 0x2

    invoke-static {p0, v0, v4, v5}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/mobilesecurity/engine/a;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 194
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 130
    const-string v0, "aci-1"

    const-string v1, "aci-1"

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/avast/android/mobilesecurity/app/scanner/ai;
.super Ljava/lang/Object;
.source "ScannerTools.java"


# direct methods
.method public static a(Lcom/avast/android/mobilesecurity/engine/ac;)I
    .locals 2
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/aj;->c:[I

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const v0, 0x7f0c025e

    :goto_0
    return v0

    .line 124
    :pswitch_0
    const v0, 0x7f0c0265

    goto :goto_0

    .line 126
    :pswitch_1
    const v0, 0x7f0c0264

    goto :goto_0

    .line 128
    :pswitch_2
    const v0, 0x7f0c0262

    goto :goto_0

    .line 130
    :pswitch_3
    const v0, 0x7f0c0263

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/v;)I
    .locals 2
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/aj;->a:[I

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const v0, 0x7f0c0234

    .line 75
    :goto_0
    return v0

    .line 26
    :pswitch_0
    const v0, 0x7f0c0235

    .line 27
    goto :goto_0

    .line 29
    :pswitch_1
    const v0, 0x7f0c0236

    .line 30
    goto :goto_0

    .line 32
    :pswitch_2
    const v0, 0x7f0c0237

    .line 33
    goto :goto_0

    .line 35
    :pswitch_3
    const v0, 0x7f0c0238

    .line 36
    goto :goto_0

    .line 38
    :pswitch_4
    const v0, 0x7f0c0239

    .line 39
    goto :goto_0

    .line 41
    :pswitch_5
    const v0, 0x7f0c023a

    .line 42
    goto :goto_0

    .line 44
    :pswitch_6
    const v0, 0x7f0c023b

    .line 45
    goto :goto_0

    .line 47
    :pswitch_7
    const v0, 0x7f0c023c

    .line 48
    goto :goto_0

    .line 50
    :pswitch_8
    const v0, 0x7f0c023d

    .line 51
    goto :goto_0

    .line 53
    :pswitch_9
    const v0, 0x7f0c023e

    .line 54
    goto :goto_0

    .line 56
    :pswitch_a
    const v0, 0x7f0c023f

    .line 57
    goto :goto_0

    .line 59
    :pswitch_b
    const v0, 0x7f0c0240

    .line 60
    goto :goto_0

    .line 62
    :pswitch_c
    const v0, 0x7f0c0241

    .line 63
    goto :goto_0

    .line 65
    :pswitch_d
    const v0, 0x7f0c0242

    .line 66
    goto :goto_0

    .line 68
    :pswitch_e
    const v0, 0x7f0c0243

    .line 69
    goto :goto_0

    .line 24
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/x;)I
    .locals 3
    .parameter

    .prologue
    const v0, 0x7f0c0229

    .line 86
    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/aj;->b:[I

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return v0

    .line 88
    :pswitch_1
    const v0, 0x7f0c022a

    goto :goto_0

    .line 90
    :pswitch_2
    const v0, 0x7f0c022b

    goto :goto_0

    .line 92
    :pswitch_3
    const v0, 0x7f0c022f

    goto :goto_0

    .line 94
    :pswitch_4
    const v0, 0x7f0c022d

    goto :goto_0

    .line 96
    :pswitch_5
    const v0, 0x7f0c0232

    goto :goto_0

    .line 98
    :pswitch_6
    const v0, 0x7f0c0230

    goto :goto_0

    .line 100
    :pswitch_7
    const v0, 0x7f0c022c

    goto :goto_0

    .line 102
    :pswitch_8
    const v0, 0x7f0c0231

    goto :goto_0

    .line 104
    :pswitch_9
    const v0, 0x7f0c022e

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

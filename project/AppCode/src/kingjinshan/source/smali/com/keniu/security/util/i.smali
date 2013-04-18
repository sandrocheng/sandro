.class public Lcom/keniu/security/util/i;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final a:J = 0x3e8L

.field public static final b:J = 0xea60L

.field public static final c:J = 0x36ee80L

.field public static final d:J = 0x5265c00L

.field public static final e:J = 0x1b7740L

.field public static final f:J = 0xa4cb80L

#the value of this static final field might be set in the static constructor
.field static final synthetic g:Z = false

.field private static final h:J = 0x5265c00L

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/keniu/security/util/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/keniu/security/util/i;->g:Z

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/keniu/security/util/i;->m:I

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/32 v5, 0x5265c00

    const/4 v4, 0x3

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/keniu/security/util/i;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    div-long/2addr v0, v5

    sget v2, Lcom/keniu/security/util/i;->m:I

    int-to-long v2, v2

    add-long/2addr v2, p0

    div-long/2addr v2, v5

    long-to-int v0, v0

    long-to-int v1, v2

    sub-int/2addr v0, v1

    if-gt v0, v4, :cond_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 50
    const v0, 0x7f0b069e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 40
    :pswitch_0
    const v0, 0x7f0b069b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_1
    const v0, 0x7f0b069c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_2
    const v0, 0x7f0b069d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/keniu/security/util/i;->a(JLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    const-string v0, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 233
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)[Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 126
    const-string v0, "yyyyMMdd"

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, p0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const/16 v3, 0x1c

    if-gt p0, v3, :cond_1

    invoke-virtual {v2, v5, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 131
    new-array v0, v6, [Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 134
    if-ge v2, p0, :cond_0

    .line 135
    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 138
    :cond_0
    const/16 v2, 0x1c

    if-gt p0, v2, :cond_1

    .line 139
    invoke-virtual {v1, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 142
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 143
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 156
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 150
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 151
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method private static b(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_0

    move v0, v2

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_0
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    move v0, v1

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_2

    move v0, v2

    .line 175
    goto :goto_0

    :cond_2
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method private static b(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/32 v5, 0x5265c00

    const/4 v4, 0x3

    .line 66
    sget v0, Lcom/keniu/security/util/i;->m:I

    int-to-long v0, v0

    add-long/2addr v0, p0

    div-long/2addr v0, v5

    .line 67
    sget v2, Lcom/keniu/security/util/i;->m:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    div-long/2addr v2, v5

    .line 68
    long-to-int v0, v0

    long-to-int v1, v2

    sub-int/2addr v0, v1

    .line 69
    if-gt v0, v4, :cond_0

    if-gez v0, :cond_1

    :cond_0
    move v0, v4

    .line 71
    :cond_1
    return v0
.end method

.method private static b()J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 87
    const-string v0, "yyyyMMddkkmmssSSS"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 185
    if-ge v1, p0, :cond_0

    .line 186
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 189
    :cond_0
    if-ne v1, p0, :cond_1

    .line 190
    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 191
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 194
    :cond_1
    if-le v1, p0, :cond_2

    .line 195
    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 196
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 199
    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 201
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit16 v2, v0, 0x190

    if-nez v2, :cond_3

    move v0, v4

    :goto_0
    add-int/lit16 v0, v0, 0x16d

    add-int/2addr v0, v1

    .line 205
    :goto_1
    sget-boolean v1, Lcom/keniu/security/util/i;->g:Z

    if-nez v1, :cond_5

    if-gtz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "RemainingDays > 0"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 203
    :cond_3
    rem-int/lit8 v2, v0, 0x64

    if-eqz v2, :cond_4

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_5
    return v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static c(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-string v0, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(I)J
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 214
    if-ge v1, p0, :cond_0

    .line 215
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 218
    :cond_0
    const/16 v1, 0x1c

    if-gt p0, v1, :cond_1

    .line 219
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 224
    :goto_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 228
    div-long/2addr v0, v5

    mul-long/2addr v0, v5

    return-wide v0

    .line 221
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private static d(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-string v0, "kk:mm yyyy/MM/dd"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    const-string v0, "yyyyMMdd"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-string v0, "yyyyMM"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

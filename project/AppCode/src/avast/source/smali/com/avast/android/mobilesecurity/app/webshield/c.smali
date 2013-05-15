.class Lcom/avast/android/mobilesecurity/app/webshield/c;
.super Landroid/os/Handler;
.source "DolphinWebshieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

.field private final d:Lcom/avast/android/mobilesecurity/t;

.field private final e:Lcom/avast/android/mobilesecurity/app/account/e;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    .line 116
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    .line 118
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p2, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    .line 119
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    .line 120
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/e;

    invoke-direct {v0, p2}, Lcom/avast/android/mobilesecurity/app/account/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->e:Lcom/avast/android/mobilesecurity/app/account/e;

    .line 121
    return-void
.end method

.method private a(Lcom/dolphin/browser/addons/h;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v0, "Calling browser is null"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move-object v0, v2

    .line 218
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v0, p1, Lcom/dolphin/browser/addons/h;->g:Lcom/dolphin/browser/addons/ad;

    invoke-interface {v0, v2, v2}, Lcom/dolphin/browser/addons/ad;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 207
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/HistoryInfo;

    move-object v1, v0

    .line 208
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/HistoryInfo;

    .line 210
    iget-wide v4, v0, Lcom/dolphin/browser/addons/HistoryInfo;->d:J

    iget-wide v6, v1, Lcom/dolphin/browser/addons/HistoryInfo;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    :goto_2
    move-object v1, v0

    .line 213
    goto :goto_1

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/dolphin/browser/addons/HistoryInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    .line 215
    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, v1, Lcom/dolphin/browser/addons/HistoryInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    invoke-static {v0, v5, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 233
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 235
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    :cond_0
    move-object v3, v1

    move v1, v2

    .line 241
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v0, v4}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    invoke-static {v0, v5, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 247
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v4}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 249
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_2
    return-object v3
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/ak;->a()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 272
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 285
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/b;->a:[I

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const v1, 0x7f0c0301

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->e:Lcom/avast/android/mobilesecurity/app/account/e;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v1, v2, v0, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/av;)V

    .line 301
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const v1, 0x7f0c02ff

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const v1, 0x7f0c0300

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const v1, 0x7f0c0302

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/dolphin/browser/addons/h;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aA()V

    .line 308
    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->F:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v2, p1, v3}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkResult.result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 313
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->e:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v2, v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 351
    :cond_1
    :goto_0
    return v0

    .line 319
    :cond_2
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->e:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v2, v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 323
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->V()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const-string v2, "about:blank"

    invoke-static {v1, p3, p4, v2}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V

    .line 325
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v1, p1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 328
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avast/android/mobilesecurity/app/webshield/c;->b(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/dolphin/browser/addons/h;I)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->T()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->b:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->e:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->e:Lcom/avast/android/mobilesecurity/app/account/e;

    sget-object v2, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v0, v1, v1, v2}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;)V

    .line 345
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v0, p1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 350
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const-string v2, "about:blank"

    invoke-static {v0, p3, p4, v2}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V

    move v0, v1

    .line 351
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/dolphin/browser/addons/h;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    invoke-static {v0, p3, p4, v1}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V

    .line 375
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    const v2, 0x7f0c0406

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->H:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Lcom/avast/android/mobilesecurity/engine/ah;)V

    .line 387
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/webshield/n;->e:Lcom/avast/android/mobilesecurity/app/webshield/n;

    const/high16 v4, 0x1000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x8000

    .line 126
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/addons/h;

    .line 127
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Lcom/dolphin/browser/addons/h;)Ljava/lang/String;

    move-result-object v4

    .line 128
    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Newest URL="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 133
    iget-object v1, v0, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    invoke-interface {v1}, Lcom/dolphin/browser/addons/bs;->b()[I

    move-result-object v5

    .line 136
    iget-object v1, v0, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    invoke-interface {v1}, Lcom/dolphin/browser/addons/bs;->a()Lcom/dolphin/browser/addons/aw;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    invoke-interface {v1}, Lcom/dolphin/browser/addons/aw;->d()I

    move-result v1

    .line 140
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_8

    .line 141
    iget-object v6, v0, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    aget v7, v5, v3

    invoke-interface {v6, v7}, Lcom/dolphin/browser/addons/bs;->a(I)Lcom/dolphin/browser/addons/aw;

    move-result-object v6

    .line 142
    invoke-interface {v6}, Lcom/dolphin/browser/addons/aw;->c()Lcom/dolphin/browser/addons/bh;

    move-result-object v6

    .line 143
    invoke-interface {v6}, Lcom/dolphin/browser/addons/bh;->i()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-interface {v6}, Lcom/dolphin/browser/addons/bh;->h()Ljava/lang/String;

    move-result-object v6

    .line 145
    if-eqz v7, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    :cond_3
    aget v3, v5, v3

    .line 152
    :goto_2
    if-ne v3, v2, :cond_7

    .line 153
    const-string v3, "Can\'t infer scanned tab ID, assume current tab"

    invoke-static {v3}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 155
    if-ne v1, v2, :cond_5

    .line 156
    const-string v0, "Current tab ID invalid"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "Exception handling URL change"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v5, v1

    .line 161
    :goto_3
    :try_start_1
    invoke-direct {p0, v4}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 163
    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/util/List;)V

    .line 164
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 166
    invoke-direct {p0, v4, v1, v0, v5}, Lcom/avast/android/mobilesecurity/app/webshield/c;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/dolphin/browser/addons/h;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 170
    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 172
    :cond_6
    const-string v1, ""

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->f:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->a:Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;->a(Lcom/avast/android/mobilesecurity/app/webshield/DolphinWebshieldService;Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/h;

    .line 174
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/c;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/avast/android/mobilesecurity/app/webshield/n;->e:Lcom/avast/android/mobilesecurity/app/webshield/n;

    const/high16 v4, 0x1000

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v5, v3

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

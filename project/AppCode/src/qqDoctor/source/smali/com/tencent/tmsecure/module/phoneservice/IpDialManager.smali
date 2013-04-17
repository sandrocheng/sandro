.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbxl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final doIpCall(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getDialPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v5, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start dealing with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_18

    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v0, :cond_4

    :cond_2
    move-object v0, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove header, it becomes "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, v5, Lbxl;->c:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v7, v1, v2, v6, v0}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>()V

    array-length v7, v1

    if-le v7, v3, :cond_11

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setCity(Ljava/lang/String;)V

    :goto_3
    iget-object v1, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v2

    new-instance v3, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    const-string v4, ""

    invoke-direct {v3, v4, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)Z

    move-result v2

    iget-object v3, v5, Lbxl;->c:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->isYellowPageNumber(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Excluded-Area "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Excluded-Phone "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Yellow-Page "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_12

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is in the excluded lists, so change nothing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_4
    :pswitch_0
    move-object p1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v2, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "17911"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v2, v3

    :goto_5
    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "has IP header, remove the header("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    const-string v6, "17951"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v3

    goto :goto_5

    :cond_7
    const-string v6, "10193"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v3

    goto :goto_5

    :cond_8
    const-string v6, "17910"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v3

    goto :goto_5

    :cond_9
    const-string v6, "12520"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v2, v3

    goto :goto_5

    :cond_a
    const-string v6, "12583"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v2, v3

    goto :goto_5

    :cond_b
    const-string v6, "96688"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v2, v3

    goto :goto_5

    :cond_c
    const-string v6, "17901"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v2, v3

    goto :goto_5

    :cond_d
    const-string v6, "12593"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v2, v3

    goto :goto_5

    :cond_e
    const-string v6, "17909"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v2, v3

    goto/16 :goto_5

    :cond_f
    iget-object v6, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v6, v6, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    if-eqz v6, :cond_17

    iget-object v6, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v6, v6, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v3

    goto/16 :goto_5

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "don\'t has IP header, go to next step!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_2

    :cond_11
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v5}, Lbxl;->a()V

    iget-object v1, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_1
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'s length less than 8, so do nothing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v5, v0}, Lbxl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v5, Lbxl;->c:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocationTrime{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} compare localPhone{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    move-object p1, v0

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v5, v0}, Lbxl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    move v2, v4

    goto/16 :goto_5

    :cond_18
    move-object v1, p1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v1, v1, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbxl;

    invoke-direct {v0}, Lbxl;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    invoke-virtual {v0, p1}, Lbxl;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final setIpDialSetting(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    .locals 5

    invoke-static {}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->a:Lbxl;

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    iget-object v0, v1, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, v1, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, La;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    iget-object v2, v1, Lbxl;->a:Lbtl;

    const-string v3, "ip_dial_setting"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lbxl;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

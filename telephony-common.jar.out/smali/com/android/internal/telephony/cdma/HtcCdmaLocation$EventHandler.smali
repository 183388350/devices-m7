.class Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;
.super Landroid/os/Handler;
.source "HtcCdmaLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_2

    .line 111
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " HtcCdmaLocation drop event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->removeMessages(I)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->getCurrentGoogleLocationSetting()Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;

    move-result-object v0

    .line 129
    .local v0, "googleLocationOn":Ljava/lang/Boolean;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger reporting CdmaCellLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$200(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$200(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # setter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$202(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$200(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # setter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$202(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
